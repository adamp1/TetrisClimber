using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BlockMovement : MonoBehaviour {

    GameObject[] TetrisPrefab = new GameObject[5];
    GameObject Deathcollider;
    float fallingSpeed = 5f;
    bool stopMovement;

    public bool allowRotation;
    public bool limitRotation;

    bool moveRightAxis;
    bool moveLeftAxis;

    float resetRight;
    float resetLeft;

    void FixedUpdate()
    {


            //Take Object transform
            Vector3 pos = transform.position;
            


            //Speed Up falling Object
            if (Input.GetButton("MoveTetrisDown"))
              {
                //pos.y = pos.y - Input.GetAxis("MoveTetrisDown") * 50 * Time.deltaTime;
                transform.position += new Vector3(0, -1, 0);

                if (CheckIsValidPosition())
                {
                    FindObjectOfType<Game>().UpdateGrid(this);

                }
                else
                {                 
                    transform.position += new Vector3(0, 1, 0);
                }
              }

            //Falling Object
            transform.position += new Vector3(0, -fallingSpeed * Time.deltaTime, 0);



            if (CheckIsValidPosition())
            {
                FindObjectOfType<Game>().UpdateGrid(this);
            }
            else
            {
                enabled = false;
                FindObjectOfType<Game>().SpawnNextPrefab();
            }

            //Rotate Object
            if (Input.GetButtonDown("RotateRight"))
            {

                if (allowRotation)
                {
                    if(limitRotation)
                    {
                        if(transform.rotation.eulerAngles.z >= -90)
                        {
                            transform.Rotate(0, 0, 90);
                        }
                        else
                        {
                            transform.Rotate(0, 0, -90);
                        }
                    }
                    else
                    {
                        transform.Rotate(0, 0, -90);
                    }

                    if (CheckIsValidPosition())
                    {
                        FindObjectOfType<Game>().UpdateGrid(this);
                    }
                    else
                    {
                        if (limitRotation)
                        {
                            if (transform.rotation.eulerAngles.z >= -90)
                            {
                                transform.Rotate(0, 0, 90);
                            }
                            else
                            {
                                transform.Rotate(0, 0, -90);
                            }
                        }
                        else
                        {
                            transform.Rotate(0, 0, +90);
                        }
                    }
                }
            }

            if (Input.GetButtonDown("RotateLeft"))
            {
                if (allowRotation)
                {
                    if (limitRotation)
                    {
                        if (transform.rotation.eulerAngles.z >= 90)
                        {
                            transform.Rotate(0, 0, -90);
                        }
                        else
                        {
                            transform.Rotate(0, 0, 90);
                        }
                    }
                    else
                    {
                        transform.Rotate(0, 0, 90);

                    }

                    if (CheckIsValidPosition())
                    {
                        FindObjectOfType<Game>().UpdateGrid(this);
                    }
                    else
                    {
                        if (limitRotation)
                        {
                            if (transform.rotation.eulerAngles.z >= 90)
                            {
                                transform.Rotate(0, 0, -90);
                            }
                            else
                            {
                                transform.Rotate(0, 0, 90);
                            }
                        }
                        else
                        {
                            transform.Rotate(0, 0, -90);
                        }
                    }
                }
            }

        //Move Object
        if (Input.GetAxis("MoveTetrisSide") > 0)
        {
            if (!moveRightAxis)
            {
                transform.position += new Vector3(Input.GetAxis("MoveTetrisSide"), 0, 0);

                if (CheckIsValidPosition())
                {
                    FindObjectOfType<Game>().UpdateGrid(this);
                }
                else
                {
                    transform.position += new Vector3(-1, 0, 0);
                }

                moveRightAxis = true;
            }           
        }

        if (moveRightAxis)
        {
            resetRight += 1 * Time.deltaTime;

            if(resetRight > 0.05)
            {
                moveRightAxis = false;
                resetRight = 0;
            }
        }


        if (Input.GetAxis("MoveTetrisSide") < 0)
        {

            if (!moveLeftAxis)
            {
                transform.position += new Vector3(Input.GetAxis("MoveTetrisSide"), 0, 0);

                if (CheckIsValidPosition())
                {
                    FindObjectOfType<Game>().UpdateGrid(this);
                }
                else
                {
                    transform.position += new Vector3(1, 0, 0);
                }
            }

            moveLeftAxis = true;
        }

        if (moveLeftAxis)
        {
            resetLeft += 1 * Time.deltaTime;

            if (resetLeft > 0.05)
            {
                moveLeftAxis = false;
                resetLeft = 0;
            }
        }

        

    }

    bool CheckIsValidPosition()
    {
        foreach (Transform mino in transform)
        {
            Vector3 pos = GameObject.FindObjectOfType<Game>().Round(mino.position);

            if (FindObjectOfType<Game>().CheckIsInsideGrid(pos) == false)
            {
                return false;
            }

            if (FindObjectOfType<Game>().GetTransformAtGridPosition(pos) != null && FindObjectOfType<Game>().GetTransformAtGridPosition(pos).parent != transform)
            {
                return false;
            }
        }
        return true;
    }


    //Stop Movement
    /* private void OnCollisionEnter(Collision col)
      {


          if (col.gameObject.tag == "Ground")
          {
              stopMovement = true;

          }
      } */
}
