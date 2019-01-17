using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Laser : MonoBehaviour
{

    LineRenderer lr;
    public GameObject SparksEffect;
    GameObject Spark;

    // Start is called before the first frame update
    void Start()
    {
        lr = GetComponent<LineRenderer>();
        GameObject Spark = Instantiate(SparksEffect, transform);

        transform.GetChild(1).gameObject.SetActive(false);

    }

    // Update is called once per frame
    void Update()
    {

        if(transform.position.x < 7.5f)
        {
            RaycastHit hit;
            Debug.DrawRay(transform.position, transform.right * 30);

            //lr.SetPosition(0, transform.position);
            if (Physics.Raycast(transform.position, transform.right * 30, out hit))
            {

                transform.GetChild(1).gameObject.SetActive(true);
                transform.GetChild(1).transform.position = hit.point;

                if (hit.collider.tag == "Player" || hit.collider.tag == "Mino")
                {
                    lr.SetPosition(1, new Vector3(hit.point.x + transform.position.x, 0, 0));


                    if (hit.collider.tag == "Player")
                    {
                        Destroy(hit.collider.gameObject);
                    }

                }
                else
                {
                    lr.SetPosition(1, Vector3.right*50);
                    //lr.SetPosition(1, new Vector3(-20, 0, 0));
                    //SparksEffect.SetActive(false);
                }
            }
            else
            {
                    transform.GetChild(1).gameObject.SetActive(false);
                
            }


        }

        if (transform.position.x > 7.5f)
        {
            RaycastHit hit;
            Debug.DrawRay(transform.position, -transform.right * 30);

            //lr.SetPosition(0, transform.position);
            if (Physics.Raycast(transform.position, -transform.right * 30, out hit))
            {

                transform.GetChild(1).gameObject.SetActive(true);
                transform.GetChild(1).transform.position = hit.point;

                if (hit.collider.tag == "Player" || hit.collider.tag == "Mino")
                {
                    
                    lr.SetPosition(1, new Vector3(hit.point.x - transform.position.x , 0, 0));



                    //Debug.Log("Laserhit");

                    if (hit.collider.tag == "Player")
                    {
                        Destroy(hit.collider.gameObject);
                    }

                }
                else
                {
                    //lr.SetPosition(1, new Vector3(20, 0, 0));
                    lr.SetPosition(1, Vector3.left*50);
                    //SparksEffect.SetActive(false);
                }
            }
            else
            {
                    transform.GetChild(1).gameObject.SetActive(false);
            }

        }





    }
}
