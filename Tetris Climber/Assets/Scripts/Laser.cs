using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Laser : MonoBehaviour
{

    LineRenderer lr;

    // Start is called before the first frame update
    void Start()
    {
        lr = GetComponent<LineRenderer>();
    }

    // Update is called once per frame
    void Update()
    {

        if(transform.position.x < 7.5f)
        {
            RaycastHit hit;
            Debug.DrawRay(transform.position, transform.right * 30);

            if (Physics.Raycast(transform.position, transform.right * 30, out hit))
            {
                if (hit.collider.tag == "Player" || hit.collider.tag == "Mino")
                {
                    lr.SetPosition(1, new Vector3(hit.point.x + 4, 0, 0));
                    //lr.SetPosition(1, new Vector3(hit.point.x - 16, 0, 0));

                    Debug.Log("Laserhit");

                    if (hit.collider.tag == "Player")
                    {
                        Destroy(hit.collider.gameObject);
                    }

                }
                else
                {
                    lr.SetPosition(1, new Vector3(20, 0, 0));
                    //lr.SetPosition(1, new Vector3(-20, 0, 0));
                }
            }


        }

        if (transform.position.x > 7.5f)
        {
            RaycastHit hit;
            Debug.DrawRay(transform.position, -transform.right * 30);

            if (Physics.Raycast(transform.position, -transform.right * 30, out hit))
            {
                if (hit.collider.tag == "Player" || hit.collider.tag == "Mino")
                {
                    //lr.SetPosition(1, new Vector3(hit.point.x + 4, 0, 0));
                    lr.SetPosition(1, new Vector3(hit.point.x - 16, 0, 0));
                    //Debug.Log("Laserhit");

                    if (hit.collider.tag == "Player")
                    {
                        Destroy(hit.collider.gameObject);
                    }

                }
                else
                {
                    //lr.SetPosition(1, new Vector3(20, 0, 0));
                    lr.SetPosition(1, new Vector3(-20, 0, 0));
                }
            }

        }





    }
}
