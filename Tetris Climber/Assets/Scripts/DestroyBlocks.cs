using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyBlocks : MonoBehaviour
{
    bool lookRight = false;
    bool lookLeft = true;
    bool inisiateSlice;
    float moveSwordy = 1;
    float moveSwordx = 0;
    float movesSworddown = 1;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 pos = transform.position;

        if (Input.GetAxis("Horizontal") > 0)
        {
            lookRight = true;
            lookLeft = false;
        }
        else if(Input.GetAxis("Horizontal") < 0)
        {
            lookLeft = true;
            lookRight = false;
        }

        if (Input.GetButtonDown("Slice"))
        {
            Debug.Log("Slice");
            inisiateSlice = true;
        }


        if(inisiateSlice)
        {
            RaycastHit hit;
            Ray Slice = new Ray(new Vector3(pos.x, pos.y + movesSworddown, pos.z), new Vector3(moveSwordx, moveSwordy, 0));
            Debug.DrawRay(new Vector3(pos.x, pos.y + movesSworddown, pos.z), new Vector3(moveSwordx, moveSwordy, 0));

            if (moveSwordx < 1 && lookRight)
            {
                moveSwordx += 0.5f;
            }
            else if(moveSwordx > -1 && lookLeft)
            {
                moveSwordx -= 0.5f;
            }

            if (moveSwordx >= 1 || moveSwordx <= -1 && moveSwordy > 0)
            {
                moveSwordy -= 0.5f;
            }

            if (moveSwordy <= 0 && movesSworddown > -1)
            {
                movesSworddown -= 0.5f;
            }

            if(movesSworddown <= -1)
            {
                inisiateSlice = false;
                movesSworddown = 1;
                moveSwordx = 0;
                moveSwordy = 1;
            }


            if (Physics.Raycast(Slice, out hit, 0.8f))
            {
                if (hit.collider.gameObject.tag == "Mino")
                {
                    Destroy(hit.transform.gameObject);
                }

            }
        }

    }
}
