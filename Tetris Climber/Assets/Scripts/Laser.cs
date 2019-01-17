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

        if(transform.position.x == -4)
        {
            RaycastHit hit;
            Debug.DrawRay(transform.position, transform.right * 20);

            if (Physics.Raycast(transform.position, transform.right * 20, out hit))
            {
                if (hit.collider)
                {
                    lr.SetPosition(1, new Vector3(hit.point.x + 4, 0, 0));
                    //lr.SetPosition(1, new Vector3(hit.point.x - 16, 0, 0));

                    Debug.Log("Laserhit");

                    if (hit.collider.tag == "Player")
                    {
                        Destroy(hit.collider.gameObject);
                    }

                }
            }
            else
            {
                lr.SetPosition(1, new Vector3(20, 0, 0));
                //lr.SetPosition(1, new Vector3(-20, 0, 0));
            }
        }

        if (transform.position.x == 18)
        {
            RaycastHit hit;
            Debug.DrawRay(transform.position, -transform.right * 20);

            if (Physics.Raycast(transform.position, -transform.right * 20, out hit))
            {
                if (hit.collider )
                {
                    //lr.SetPosition(1, new Vector3(hit.point.x + 4, 0, 0));
                    lr.SetPosition(1, new Vector3(hit.point.x - 16, 0, 0));
                    Debug.Log("Laserhit");

                    if (hit.collider.tag == "Player")
                    {
                        Destroy(hit.collider.gameObject);
                    }

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
