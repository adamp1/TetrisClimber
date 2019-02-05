using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerDeathTrigger : MonoBehaviour {


    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Mino" && FindObjectOfType<PlayerMovement>().grounded)
        {
            GameObject Player = GameObject.Find("Player");
            Destroy(Player);
            GameObject.Find("Main Camera").GetComponent<CameraMovement>().enabled = false;
            AkSoundEngine.PostEvent("KilledByBlock", other.gameObject);
            //FindObjectOfType<Game>().SaveScore();
        }

        if(other.gameObject.tag == "Ground" && FindObjectOfType<PlayerMovement>().grounded)
        {
            GameObject Player = GameObject.Find("Player"); 
            Destroy(Player);
            //FindObjectOfType<Game>().SaveScore();
            AkSoundEngine.PostEvent("KilledByBlock", other.gameObject);
        }

        if (other.gameObject.tag == "DeathCollider")
        {
            GameObject Player = GameObject.Find("Player");
            Destroy(Player);
            FindObjectOfType<BlockMovement>().enabled = false;
            //FindObjectOfType<Game>().SaveScore();
            AkSoundEngine.PostEvent("KilledByNano", other.gameObject);
        }

    }

}
