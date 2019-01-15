using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinoPhysics : MonoBehaviour
{
    GameObject Player;
    Material material;

    bool BlockUnderBlock;
    bool RightBlock;
    bool LeftBlock;

    float speed = 8;
    float offset = 0f;

    // Start is called before the first frame update
    void Start()
    {
        Player = GameObject.Find("Player");
        material = GetComponent<MeshRenderer>().material;

        //offset = transform.position.x * 0.1f;
    }

    IEnumerator boom()
    {
        float t = 0;

        yield return new WaitForSeconds(offset);

        while (t <= 1)
        {
            material.SetFloat("_boom", Mathf.Lerp(0, 1, t));
            yield return null;
            //print(Time.time + " in boom");

            t += Time.deltaTime * speed;
        }

        material.SetFloat("_boom", 0);
        GetComponent<MeshRenderer>().enabled = false;

        FindObjectOfType<Game>().DeleteGrid();

        Destroy(gameObject);
        //material.SetFloat("_emintensity", 1000);
    }

    // Update is called once per frame
    void Update()
    {
        //DestroyBlock = GameObject.Find("Player")

        Vector3 pos = transform.position;
    
        //Ray
        RaycastHit hit;
        Ray CheckUnderBlock = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.down);
        Ray CheckRightBlock = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.right);
        Ray CheckLeftBlock = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.left);

        Debug.DrawRay(new Vector3(pos.x, pos.y, pos.z), Vector3.down);

        if (Physics.Raycast(CheckRightBlock, out hit, 0.9f))
        {
            if (hit.transform.tag == "Mino" && gameObject.GetComponentInParent<BlockMovement>().enabled == false)
            {
                if(hit.transform.GetComponentInParent<BlockMovement>().enabled == false)
                RightBlock = true;
            }

        }
        else if(RightBlock)
        {
            if (!Physics.Raycast(CheckUnderBlock, out hit, 0.9f))
            {
                FindObjectOfType<Game>().DeleteGrid();
                transform.position += new Vector3(0, -1, 0);
            }
        }

        if (Physics.Raycast(CheckLeftBlock, out hit, 0.9f))
        {
            if (hit.transform.tag == "Mino" && gameObject.GetComponentInParent<BlockMovement>().enabled == false)
            {
                if (hit.transform.GetComponentInParent<BlockMovement>().enabled == false)
                LeftBlock = true;
            }

        }
        else if (LeftBlock)
        {
            if (!Physics.Raycast(CheckUnderBlock, out hit, 0.9f))
            {
                FindObjectOfType<Game>().DeleteGrid();
                transform.position += new Vector3(0, -1, 0);
            }
        }


        if (Physics.Raycast(CheckUnderBlock, out hit, 0.9f))
        {
            if (hit.transform.tag == "Mino" && gameObject.GetComponentInParent<BlockMovement>().enabled == false)
            {
                if (hit.transform.GetComponentInParent<BlockMovement>().enabled == false)
                BlockUnderBlock = true;
            }

        }
        else if (BlockUnderBlock)
        {
            FindObjectOfType<Game>().DeleteGrid();
            transform.position += new Vector3(0, -1, 0);
            
        }
       

        if(Player == null)
        {
            StartCoroutine(boom());
        }

    }

    void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.tag == "Sword")
        {
            StartCoroutine(boom());
        }

        if(other.gameObject.tag == "Blockage")
        {
            StartCoroutine(boom());
        }

    }

}
