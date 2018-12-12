using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StopBlocks : MonoBehaviour
{
    bool spawnPrefab;

    // Update is called once per frame
    void Update()
    {
        Vector3 pos = transform.position;

        RaycastHit hit;
        Ray CheckUnderBlock = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.down);
        Debug.DrawRay(new Vector3(pos.x, pos.y, pos.z), Vector3.down);

        Ray Daempfer = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.down);
        Debug.DrawRay(new Vector3(pos.x, pos.y, pos.z), Vector3.down);

        if (Physics.Raycast(CheckUnderBlock, out hit, 0.9f))
        {

            if (hit.transform.tag == "Blockage" && !spawnPrefab)
            {
                gameObject.GetComponentInParent<BlockMovement>().enabled = false;
                spawnPrefab = true;
                FindObjectOfType<Game>().SpawnNextPrefab();
            }
        }

        if (Physics.Raycast(Daempfer, out hit, 2f))
        {

            if (hit.transform.tag == "Blockage" && !spawnPrefab)
            {
                gameObject.GetComponent<BlockMovement>().stopSpeed = true;
            }

        }
    }
}
