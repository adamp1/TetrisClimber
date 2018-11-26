using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeathCollider : MonoBehaviour {

    public float speed;
    float time;
    
	// Update is called once per frame
	void FixedUpdate ()
    {
        changeTime();
        moveCollider();
        
	}

    void changeTime()
    {
        time += 1 * Time.deltaTime;
    }

    void moveCollider ()
    {
        Vector3 pos = transform.position;
        pos.y = pos.y + 1 * speed * Time.deltaTime;
        transform.position = pos;
    }

    void OnTriggerEnter (Collider other)
    {
        if (other.gameObject.tag == "DeathTrigger")
        {
            GameObject Player = GameObject.Find("Player");
            Destroy(Player);
        }

        if (other.gameObject.tag == "Mino")
        {
            Destroy(other.gameObject);
        }
    }
}
