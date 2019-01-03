using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinoPhysics : MonoBehaviour
{
    bool BlockUnderBlock;
    public bool MoveMinoDown;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
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


        if(!BlockUnderBlock && gameObject.GetComponentInParent<BlockMovement>().enabled == false)
        {
            
        }
    }
}
