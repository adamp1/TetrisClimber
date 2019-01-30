using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MinoPhysics : MonoBehaviour
{
    GameObject Player;
    Material material;
    Material inactiveMat;
    LineRenderer lr;

    public bool moveMino;
    public bool BlockUnderBlock;
    public bool RightBlock;
    public bool LeftBlock;

    float goingdown;
    public float speed = 8;
    public float offset = 0.1f;

    public bool isFalling;
    public bool sameParent;
    public bool Grounded = true;

    bool updateMinos; 

    int counter = 0;

    float timer;

    //Hier muss das Tetris Sparks Prefab rein
    public GameObject effect;
    GameObject ob;
    ParticleSystem gameeffect;


    // Start is called before the first frame update
    void Start()
    {
        Player = GameObject.Find("Player");
        material = GetComponent<MeshRenderer>().material;
        lr = GetComponent<LineRenderer>();

        


    }

    IEnumerator boom()
    {
        float t = 0;

        //if (Player == null)
        //yield return new WaitForSeconds(offset);

        gameeffect.Play();

        while (t <= 1)
        {
            material.SetFloat("_boom", Mathf.Lerp(0, 1, t));
            yield return null;

            t += Time.deltaTime * speed;
        }

        material.SetFloat("_boom", 0);
        GetComponent<MeshRenderer>().enabled = false;

        //FindObjectOfType<Game>().DeleteGrid();

        Destroy(gameObject);
        
        
        //material.SetFloat("_emintensity", 1000);
    }

    // Update is called once per frame
    void Update()
    {

        //DestroyBlock = GameObject.Find("Player")

        Vector3 pos = transform.position;
    
        //Ray
        RaycastHit hit;
        Ray CheckUnderBlock = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.down);
        Ray CheckRightBlock = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.right);
        Ray CheckLeftBlock = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.left);
        Ray CheckOverBlock = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.up);
        Ray CheckRightBlockUnder = new Ray(new Vector3(pos.x, pos.y - 0.6f, pos.z), Vector3.right);
        Ray CheckLeftBlockUnder = new Ray(new Vector3(pos.x, pos.y - 0.6f, pos.z), Vector3.left);
        //Ray CheckOverBlock = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.up);
        //Ray CheckRightUPDATE = new Ray(new Vector3(pos.x, pos.y- 0.5f, pos.z), Vector3.right * 5);
        // Ray CheckLeftUPDATE = new Ray(new Vector3(pos.x, pos.y - 0.5f, pos.z), Vector3.left * 5);
        Ray CheckUnderBlockLeft = new Ray(new Vector3(pos.x - 1, pos.y, pos.z), Vector3.down * 5);
        Ray CheckUnderBlockRight = new Ray(new Vector3(pos.x + 1, pos.y , pos.z), Vector3.down * 5);
        Ray ShapePreview = new Ray(new Vector3(pos.x, pos.y, pos.z), Vector3.down * 30);

        Debug.DrawRay(new Vector3(pos.x, pos.y, pos.z), Vector3.down * Mathf.Infinity );

        //GROUND TREE
        if (gameObject.GetComponentInParent<BlockMovement>().enabled == false && Time.timeScale != 0)
        {

            //UNDER BLOCK CHECK
            if (Physics.Raycast(CheckUnderBlock, out hit, 1f))
            {
                if (hit.transform.tag == "Ground") 
                {

                }

                if (hit.transform.tag == "Mino")
                {
                    if (hit.transform.parent.GetComponent<BlockMovement>().enabled == false && gameObject.GetComponentInParent<BlockMovement>().enabled == false)
                    {
                        BlockUnderBlock = true;
                        isFalling = false;
                    }
                }

                if (hit.transform.tag == "Player" && isFalling)
                {
                    Destroy(hit.collider.gameObject);
                }

                moveMino = false;
            }
            else if ( BlockUnderBlock || isFalling)
            {
                isFalling = true;
                MoveMinoDown();
            }

            //LEFT BLOCK CHECK
            if (Physics.Raycast(CheckLeftBlock, out hit, 1f))
            {
                if (hit.transform.tag == "Mino" && hit.transform.parent.GetComponent<BlockMovement>().enabled == false && !hit.transform.GetComponent<MinoPhysics>().moveMino)
                    LeftBlock = true;
            }
            else if (LeftBlock)
            {
                isFalling = true;
            }

            //RIGHT BLOCK CHECK
            if (Physics.Raycast(CheckRightBlock, out hit, 1f) )
            {
                if(hit.transform.tag == "Mino" && hit.transform.parent.GetComponent<BlockMovement>().enabled == false && !hit.transform.GetComponent<MinoPhysics>().moveMino)
                    RightBlock = true;
            }
            else if (RightBlock)
            {
                isFalling = true;
            }




            //BUGFIXES
            if (!Physics.Raycast(CheckUnderBlock, out hit, 1) && !Physics.Raycast(CheckLeftBlock, out hit, 1) && !Physics.Raycast(CheckRightBlock, out hit, 1) && !Physics.Raycast(CheckOverBlock, out hit, 1) && gameObject.GetComponentInParent<BlockMovement>().enabled == false)
            {
                isFalling = true;
            }

        }

        if (gameObject.GetComponentInParent<BlockMovement>().enabled)
        {

            //SHAPE PREVIEW
            if (FindObjectOfType<Game>().shapePreviewOn)
            {

                
                lr.enabled = true;

                if (Physics.Raycast(ShapePreview, out hit, Mathf.Infinity))
                {
                    lr.SetPosition(0, transform.position);
                    float hitpoint = hit.point.y - transform.position.y;
                    lr.SetPosition(1, hit.point);
                }
                
                
            }
            else
            {
                lr.enabled = false;
            }

        }
        else
        {
            lr.enabled = false;
        }


     /*   if (Player == null)
        {
            offset = transform.position.x * 0.1f;

            SpawnParticle();
            StartCoroutine(boom());
            //enabled = false;
        }*/

    }

    void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.tag == "Sword")
        {
            SpawnParticle(); 
            StartCoroutine(boom());

            
            Destroy(ob, 1);
        }

        if(other.gameObject.tag == "Blockage") 
        {
            SpawnParticle();
            StartCoroutine(boom());

           
                
            Destroy(ob, 1);
        }

    }

    void MoveMinoDown ()
    {
        transform.position += new Vector3(0, -1f, 0);
        moveMino = true;
    }

    void UpdateMino()
    {
        FindObjectOfType<Game>().UpdateMinoBudgetEdition(Mathf.RoundToInt(transform.position.x), Mathf.RoundToInt(transform.position.y + 1), transform);
    }

    void SpawnParticle()
    {

        ob = Instantiate(effect, transform.position, transform.rotation) as GameObject;
        gameeffect = ob.GetComponent<ParticleSystem>();

        //Partikeleffekte müssen Farbe vom jeweiligen Block nehmen
        var main = gameeffect.main;
        main.startColor = material.GetColor("_GlowColor");
    }

}
