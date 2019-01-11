using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinoPhysics : MonoBehaviour
{
    Material material;

    bool BlockUnderBlock;   

    float speed = 8;
    float offset = 0f;

    // Start is called before the first frame update
    void Start()
    {
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
           Debug.DrawRay(new Vector3(pos.x, pos.y, pos.z), Vector3.down);


        if (Physics.Raycast(CheckUnderBlock, out hit, 0.9f))
        {
            if (hit.transform.tag == "Mino" && gameObject.GetComponentInParent<BlockMovement>().enabled == false)
            {
                BlockUnderBlock = true;
            }

        }
        else if (BlockUnderBlock)
        {
            //FindObjectOfType<Game>().MoveRowDown(Mathf.RoundToInt(transform.position.x), Mathf.RoundToInt(transform.localPosition.y));
            //transform.position += new Vector3(0, -1, 0);
            
        }


        /*   if(!BlockUnderBlock && gameObject.GetComponentInParent<BlockMovement>().enabled == false)
           {

           }*/

    }

    void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.tag == "Sword")
        {
            StartCoroutine(boom());
        }

    }

}
