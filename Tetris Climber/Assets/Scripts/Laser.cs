using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Laser : MonoBehaviour
{

    LineRenderer lr;
    public GameObject SparksEffect;
    GameObject Spark;

    bool LaserCorrection;
    bool laserKey;

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
                //Particle Effect
                transform.GetChild(1).gameObject.SetActive(true);
                transform.GetChild(1).transform.position = hit.point;
                transform.GetChild(1).transform.rotation = Quaternion.Euler(0, 270, 0);

                //Reposition Laser if not working
                if (hit.collider.tag == "Wall" && hit.point.x < 7.5f && !LaserCorrection)
                {
                    transform.position = new Vector3(transform.position.x + 0.1f, transform.position.y, transform.position.z);
                    // Debug.Log("Laser Correction: " + name);

                    if (laserKey)
                    {
                        LaserCorrection = true;
                    }
                    
                }
                else if(hit.point.x > 7.5f && !LaserCorrection)
                {
                    transform.position = new Vector3(transform.position.x - 0.05f, transform.position.y, transform.position.z);
                    laserKey = true;                   
                }

                //Set laser Position
                if (hit.collider.tag == "Player" || hit.collider.tag == "Mino")
                {

                    float hitpoint = hit.point.x - transform.position.x;
                    lr.SetPosition(1, new Vector3(hitpoint / 2, 0, 0));


                    if (hit.collider.tag == "Player" && FindObjectOfType<Game>().godmode == false)
                    {
                        Destroy(hit.collider.gameObject);
                        AkSoundEngine.PostEvent("KilledByLaser", gameObject);
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
                Destroy(gameObject);
            }


        }

        if (transform.position.x > 7.5f)
        {
            RaycastHit hit;
            Debug.DrawRay(transform.position, -transform.right * 30);

            //lr.SetPosition(0, transform.position);
            if (Physics.Raycast(transform.position, -transform.right * 30, out hit))
            {

                //Particle Effect
                transform.GetChild(1).gameObject.SetActive(true);
                transform.GetChild(1).transform.position = hit.point;

                //Reposition Laser if not working
                if (hit.collider.tag == "Wall" && hit.point.x > 7.5f)
                {
                    transform.position = new Vector3(transform.position.x - 0.1f, transform.position.y, transform.position.z);
                    //Debug.Log("Laser Correction: " + name);

                    if (laserKey)
                    {
                        LaserCorrection = true;
                    }
                }
                else if (hit.point.x < 7.5f && !LaserCorrection)
                {
                    transform.position = new Vector3(transform.position.x + 0.05f, transform.position.y, transform.position.z);
                    laserKey = true;

                }

                //Set laser Position
                if (hit.collider.tag == "Player" || hit.collider.tag == "Mino")
                {

                    float hitpoint = hit.point.x - transform.position.x;
                    lr.SetPosition(1, new Vector3(hitpoint / 2, 0, 0));



                    //Debug.Log("Laserhit");

                    if (hit.collider.tag == "Player" && FindObjectOfType<Game>().godmode == false)
                    {
                        Destroy(hit.collider.gameObject);
                        AkSoundEngine.PostEvent("KilledByLaser", gameObject);
                        //FindObjectOfType<Game>().SaveScore();
                    }

                }
                else
                {
                    //lr.SetPosition(1, new Vector3(20, 0, 0));
                    lr.SetPosition(1, Vector3.left * 50);
                    //SparksEffect.SetActive(false);
                }
            }
            else
            {
                transform.GetChild(1).gameObject.SetActive(false);
                Destroy(gameObject);
            }

        }





    }
}
