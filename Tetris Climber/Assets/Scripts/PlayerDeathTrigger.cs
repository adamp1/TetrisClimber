using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerDeathTrigger : MonoBehaviour {

    public GameObject PauseUI;

    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Mino")
        {
            GameObject Player = GameObject.Find("Player");
            Destroy(Player);
            PauseUI.SetActive(false);
            GameObject.Find("Main Camera").GetComponent<CameraMovement>().enabled = false;
        }
    }

}
