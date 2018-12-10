using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerDeathTrigger : MonoBehaviour {

    public GameObject GameOverUI;
    GameObject Player;
    bool grounded;

    void Start()
    {
        Player = GameObject.Find("Player");       
    }

    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Mino")
        {
            Destroy(Player);
            GameOverUI.SetActive(true);
            GameObject.Find("Main Camera").GetComponent<CameraMovement>().enabled = false;
        }
    }

}
