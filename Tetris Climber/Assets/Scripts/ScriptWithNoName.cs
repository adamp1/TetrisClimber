using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScriptWithNoName : MonoBehaviour
{
    bool BlockUnderBlock;
    bool PlaceBlock;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 pos = transform.position;
        float fallingSpeed = 5;

        //Ray
        RaycastHit hit;
        Ray CheckUnderBlock = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.down);
        Ray CheckLeftBlock = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.left);
        Ray CheckRightBlock = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.left);

        if (Physics.Raycast(CheckUnderBlock, out hit, 0.9f))
        {
            
            if (hit.transform.name != this.name && hit.transform.tag != "Player")
            {
                BlockUnderBlock = true;     
            }

            if (hit.transform.name == this.name && gameObject.GetComponentInParent<BlockMovement>().enabled == false)
            {
                BlockUnderBlock = true;
            }

        }

        if(BlockUnderBlock)
        {

            if(!Physics.Raycast(CheckUnderBlock, out hit, 0.9f))
            {
                transform.position += new Vector3(0, -fallingSpeed * Time.deltaTime, 0);
                PlaceBlock = true;
            }

          /*  if(!Physics.Raycast(CheckLeftBlock, out hit, 0.9f) && !Physics.Raycast(CheckRightBlock, out hit, 0.9f))
            {
                transform.position += new Vector3(0, -fallingSpeed * Time.deltaTime, 0);
                PlaceBlock = true;
            } */

        }

        if(PlaceBlock)
        {
            if (Physics.Raycast(CheckUnderBlock, out hit, 0.9f))
            {
                if (hit.transform.tag == "Mino")
                {
                    pos = new Vector3(pos.x, hit.transform.position.y + 1, pos.z);
                    transform.position = pos;
                    BlockUnderBlock = false;
                    PlaceBlock = false;
                }

                if (hit.transform.tag == "Ground")
                {
                    pos = new Vector3(pos.x, hit.transform.position.y + 10.5f, pos.z);
                    transform.position = pos;
                    BlockUnderBlock = false;
                    PlaceBlock = false;
                }

            }
        } 

    }
}
