using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour {

    

    Vector3 MovePlayer;
    public Rigidbody rb;
    public float speed = 14;
    public float speedWhilejump = 10;
    public float jumpPower = 40;
    public float gravity = 80;
    float time;
    bool moving;

    bool jumping;
    bool jumpingIdle;

    bool allowMoveRight = true;
    bool allowMoveLeft = true;
    public bool grounded;

    private void Start()
    {
        
    }

    // Update is called once per frame
    void Update() {



        //Player Position und Spawn Position
        Vector3 pos = transform.position;

        //Ray
        RaycastHit hit;
        Ray GroundCheck1 = new Ray(new Vector3(pos.x - 0.4f, pos.y, pos.z), Vector3.down);
        Ray GroundCheck2 = new Ray(new Vector3(pos.x + 0.4f, pos.y, pos.z), Vector3.down);
        Ray WallCheckRight1 = new Ray(new Vector3(pos.x, pos.y-0.9f,pos.z), Vector3.right);
        Ray WallCheckRight2 = new Ray(new Vector3(pos.x, pos.y+0.9f, pos.z), Vector3.right);
        Ray WallCheckRight3 = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.right);
        Ray WallCheckLeft1 = new Ray(new Vector3(pos.x, pos.y - 0.9f, pos.z), Vector3.left);
        Ray WallCheckLeft2 = new Ray(new Vector3(pos.x, pos.y + 0.9f, pos.z), Vector3.left);
        Ray WallCheckLeft3 = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.left); 
        Ray DeathFromAbove = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.up);
        Debug.DrawRay(new Vector3(pos.x, pos.y, pos.z), Vector3.up);


        //IDLE ANIMATION
        if (moving == false && jumping == false && FindObjectOfType<DestroyBlocks>().inisiateSlice == false && jumpingIdle == false)
        {

            FindObjectOfType<PlayerAnimHelper2>().Idle();
            //Debug.Log("START IDLE");
        }


        //MOVE PLAYER HORIZONTAL
        if (Input.GetAxisRaw("Horizontal") != 0)
        {

            //MoveRight
            if (allowMoveRight)
            {
                if (Input.GetAxisRaw("Horizontal") > 0 && pos.x < 15)
                {
                    if (grounded)
                    {
                        //MovePlayer = new Vector3(pos.x + Input.GetAxis("Horizontal") * speed * Time.deltaTime, pos.y, pos.z);
                        //rb.MovePosition(MovePlayer);
                        pos = new Vector3(pos.x + Input.GetAxisRaw("Horizontal") * speed * Time.deltaTime, pos.y, pos.z);
                        if (FindObjectOfType<DestroyBlocks>().inisiateSlice == false && !jumping)
                            FindObjectOfType<PlayerAnimHelper2>().Run();
                        moving = true;
                        //transform.position += new Vector3(0.2f, 0, 0);

                    }
                    else
                    {
                        //MovePlayer = new Vector3(pos.x + Input.GetAxis("Horizontal") * speedWhilejump * Time.deltaTime, pos.y, pos.z);
                        //rb.MovePosition(MovePlayer);
                        pos = new Vector3(pos.x + Input.GetAxisRaw("Horizontal") * speedWhilejump * Time.deltaTime, pos.y, pos.z);
                        //FindObjectOfType<PlayerAnimHelper2>().Jump();
                        //jumping = true;
                        // pos = new Vector3(pos.x + Input.GetAxis("Horizontal") * speedWhilejump * Time.deltaTime, pos.y, pos.z);
                        moving = false;
                    }
                }
                else
                {
                    
                }

            }


            //MoveLeft
            if (allowMoveLeft)
            {
                if (Input.GetAxisRaw("Horizontal") < 0 && pos.x > 0)
                {
                    if (grounded)
                    {
                        //MovePlayer = new Vector3(pos.x + Input.GetAxis("Horizontal") * speed * Time.deltaTime, pos.y, pos.z);
                        //rb.MovePosition(MovePlaywder);
                        pos = new Vector3(pos.x + Input.GetAxisRaw("Horizontal") * speed * Time.deltaTime, pos.y, pos.z);
                        if (FindObjectOfType<DestroyBlocks>().inisiateSlice == false && !jumping)
                            FindObjectOfType<PlayerAnimHelper2>().Run();
                        moving = true;
                        //transform.position += new Vector3(0.2f, 0, 0);

                    }
                    else
                    {
                        //MovePlayer = new Vector3(pos.x + Input.GetAxis("Horizontal") * speedWhilejump * Time.deltaTime, pos.y, pos.z);
                        //rb.MovePosition(MovePlayer);
                        pos = new Vector3(pos.x + Input.GetAxisRaw("Horizontal") * speedWhilejump * Time.deltaTime, pos.y, pos.z);
                        // FindObjectOfType<PlayerAnimHelper2>().Jump();
                        // pos = new Vector3(pos.x + Input.GetAxis("Horizontal") * speedWhilejump * Time.deltaTime, pos.y, pos.z);
                        //jumping = true;
                        moving = false;
                    }
                }
                else
                {
                    
                }
            }

        }
        else
        {
            moving = false;
        }

        transform.position = pos;
       
        //Jump
        if (Input.GetButtonDown("Jump") && grounded)
        {
            //rb.AddForce(new Vector3(0, jumpPower, 0), ForceMode.VelocityChange);

            rb.velocity = new Vector3(0, jumpPower, 0);

            grounded = false;

            jumping = true;

            Physics.gravity = new Vector3(0, -gravity, 0);

            FindObjectOfType<PlayerAnimHelper2>().Jump();

            AkSoundEngine.PostEvent("Jump", gameObject);


        }

        //Jump Animation
        if(jumping)
        {
            //JUMP Ani
            time = time + 1 * Time.deltaTime;
            //Debug.Log(time);
            if (time > 0.21)
            {
                time = 0;
                jumping = false;
            }

        }

        //Jump Idle
        if (!grounded && jumping == false && FindObjectOfType<DestroyBlocks>().inisiateSlice == false)
        {
            jumpingIdle = true;
            FindObjectOfType<PlayerAnimHelper2>().JumpIdle();
        }
        else
        {
            jumpingIdle = false;
        }


        //CheckGround
        if (Physics.Raycast(GroundCheck1, out hit, 1.1f) || Physics.Raycast(GroundCheck2, out hit, 1.1f))
        {
            grounded = true;           
        }
        else
        {
            grounded = false;
        }

    /*    //Kill Player
        if(Physics.Raycast(DeathFromAbove, out hit, 0.6f))
        {
            if(hit.collider.tag == "Mino")
            {
                Destroy(gameObject);
            }
            //GameObject.Find("Main Camera").GetComponent<CameraMovement>().enabled = false;
        }*/

        //CheckWall
        if(Physics.Raycast(WallCheckRight1, out hit, 0.6f) || Physics.Raycast(WallCheckRight2, out hit, 0.5f) || Physics.Raycast(WallCheckRight3, out hit, 0.5f))
        {
            allowMoveRight = false;
            //FindObjectOfType<PlayerAnimHelper2>().animator.SetBool("run", false);
        }
        else
        {
            allowMoveRight = true;
        }

        if (Physics.Raycast(WallCheckLeft1, out hit, 0.6f) || Physics.Raycast(WallCheckLeft2, out hit, 0.5f) || Physics.Raycast(WallCheckLeft3, out hit, 0.5f))
        {
            allowMoveLeft = false;
            //FindObjectOfType<PlayerAnimHelper2>().animator.SetBool("run", false);
        }
        else
        {
            allowMoveLeft = true;

        } 

        

    }

    void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Blockage")
        {
            Destroy(gameObject);           
        }
    }


}

