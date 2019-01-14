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

    bool allowMoveRight;
    bool allowMoveLeft;
    public bool grounded;

    

    // Update is called once per frame
    void Update () {

        

        //Player Position und Spawn Position
        Vector3 pos = transform.position;

        //Ray
        RaycastHit hit;
        Ray GroundCheck1 = new Ray(new Vector3(pos.x-0.4f, pos.y, pos.z), Vector3.down);
        Ray GroundCheck2 = new Ray(new Vector3(pos.x+0.4f, pos.y, pos.z), Vector3.down);
        Ray WallCheckRight1 = new Ray(new Vector3(pos.x, pos.y-0.9f,pos.z), Vector3.right);
        Ray WallCheckRight2 = new Ray(new Vector3(pos.x, pos.y+0.9f, pos.z), Vector3.right);
        Ray WallCheckRight3 = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.right);
        Ray WallCheckLeft1 = new Ray(new Vector3(pos.x, pos.y - 0.9f, pos.z), Vector3.left);
        Ray WallCheckLeft2 = new Ray(new Vector3(pos.x, pos.y + 0.9f, pos.z), Vector3.left);
        Ray WallCheckLeft3 = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.left); 

        if (allowMoveRight)
        {
            if (Input.GetAxis("Horizontal") > 0 && pos.x < 15)
            {
                if (grounded)
                {
                    //MovePlayer = new Vector3(pos.x + Input.GetAxis("Horizontal") * speed * Time.deltaTime, pos.y, pos.z);
                    //rb.MovePosition(MovePlayer);
                    pos = new Vector3(pos.x + Input.GetAxis("Horizontal") * speed * Time.deltaTime, pos.y, pos.z);
                    //transform.position += new Vector3(0.2f, 0, 0);
                }
                else
                {
                    //MovePlayer = new Vector3(pos.x + Input.GetAxis("Horizontal") * speedWhilejump * Time.deltaTime, pos.y, pos.z);
                    //rb.MovePosition(MovePlayer);
                    pos = new Vector3(pos.x + Input.GetAxis("Horizontal") * speedWhilejump * Time.deltaTime, pos.y, pos.z);
                    // pos = new Vector3(pos.x + Input.GetAxis("Horizontal") * speedWhilejump * Time.deltaTime, pos.y, pos.z);
                }

            }
        }

        if(allowMoveLeft)
        {
            if (Input.GetAxis("Horizontal") < 0 && pos.x > 0)
            {
                if (grounded)
                {
                    //rb.AddForce(pos + Vector3.right * -speed);
                    pos = new Vector3(pos.x + Input.GetAxis("Horizontal") * speed * Time.deltaTime, pos.y, pos.z);
                    //transform.position += new Vector3(-0.2f, 0, 0);
                }
                else
                {
                    pos = new Vector3(pos.x + Input.GetAxis("Horizontal") * speedWhilejump * Time.deltaTime, pos.y, pos.z);
                }
            }
        }



        transform.position = pos;

         

        //Jump
        if (Input.GetButtonDown("Jump") && grounded)
        {
            //rb.AddForce(new Vector3(0, jumpPower, 0), ForceMode.VelocityChange);

            rb.velocity = new Vector3(0, jumpPower, 0);

            grounded = false;

            Physics.gravity = new Vector3(0, -gravity, 0);

            AkSoundEngine.PostEvent("Jump", gameObject);

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

        //CheckWall
        if(Physics.Raycast(WallCheckRight1, out hit, 0.6f) || Physics.Raycast(WallCheckRight2, out hit, 0.5f) || Physics.Raycast(WallCheckRight3, out hit, 0.5f))
        {
            allowMoveRight = false;
        }
        else
        {
            allowMoveRight = true;
        }

        if (Physics.Raycast(WallCheckLeft1, out hit, 0.6f) || Physics.Raycast(WallCheckLeft2, out hit, 0.5f) || Physics.Raycast(WallCheckLeft3, out hit, 0.5f))
        {
            allowMoveLeft = false;
        }
        else
        {
            allowMoveLeft = true;









        }

        

    }
}
