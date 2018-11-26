using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerDeathTrigger : MonoBehaviour {

    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Mino")
        {
            GameObject Player = GameObject.Find("Player");
            Destroy(Player);
            Debug.Log("Dead");
        }
    }

}
