using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordTrigger : MonoBehaviour
{


    void OnTriggerEnter(Collider other)
    {    

        if(other.gameObject.tag == "Mino")
        {
            //Destroy(other.gameObject);

        }

    }
}
