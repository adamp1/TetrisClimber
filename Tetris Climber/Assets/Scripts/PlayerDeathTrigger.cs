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
            GameObject.Find("Main Camera").GetComponent<CameraMovement>().enabled = false;
            FindObjectOfType<Game>().SaveScore();
        }

        if(other.gameObject.tag == "Ground")
        {
            GameObject Player = GameObject.Find("Player");
            Destroy(Player);
            FindObjectOfType<Game>().SaveScore();
        }

        if (other.gameObject.tag == "DeathCollider")
        {
            GameObject Player = GameObject.Find("Player");
            Destroy(Player);
            FindObjectOfType<BlockMovement>().enabled = false;
            FindObjectOfType<Game>().SaveScore();

        }

        if (other.gameObject.tag == "Blockage")
        {
            Destroy(gameObject);
            FindObjectOfType<Game>().SaveScore();
        }
    }

}
