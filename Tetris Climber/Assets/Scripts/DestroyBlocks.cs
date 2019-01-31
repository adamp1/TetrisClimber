using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DestroyBlocks : MonoBehaviour
{
    GameObject Sword;
    GameObject Blade;
    
    public Image Energy;
    float energy;
    public float EnergyRecovery;
    public float SlashCost;

    public bool lookRight = false;
    public bool lookLeft = true;
    public bool inisiateSlice;
    bool sliceEnergy;

    float t;
    public float Slice_Speed = 10;
    float Slice_Friction = 1;

    private float SwordRotation;
    private float SwordRotationY;

    public bool swordAni;

    Vector3 SwordPos;


    // Start is called before the first frame update
    void Start()
    {
        Sword = GameObject.Find("Sword");
        Blade = GameObject.Find("Blade");
        SwordRotation = 0;
        Sword.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        //Energy
        energy = Energy.fillAmount;
        energy *= 100;

        //Energy Recovery
        if(energy < 100)
        {
            energy += EnergyRecovery * Time.deltaTime;
        }


        //Slice
        Vector3 pos = transform.position;

        if (Input.GetAxisRaw("Horizontal") > 0 && !swordAni)
        {
            lookRight = true;
            lookLeft = false;
        }
        else if(Input.GetAxisRaw("Horizontal") < 0 && !swordAni)
        {
            lookLeft = true;
            lookRight = false;
        }

        if (Input.GetButtonDown("Slice") && !FindObjectOfType<Game>().PauseMenuUI.activeInHierarchy)
        {
            if(energy >= SlashCost)
            {
                inisiateSlice = true;
                sliceEnergy = true;
                FindObjectOfType<PlayerAnimHelper2>().Slice();
                AkSoundEngine.PostEvent("Swing_Sword", gameObject);
                //Debug.Log("Slice");
            }
        }





        if (inisiateSlice)
        {
            t = t + 1 * Time.deltaTime;
            Sword.SetActive(true);
            swordAni = true;

            if (lookRight)
            {
                SwordRotationY = 0;
            }

            if (lookLeft)
            {
                SwordRotationY = -180;
            }

            Sword.transform.rotation = Quaternion.Euler(0, SwordRotationY, 0);

            if (t >= 0.1f)
            {
                Sword.SetActive(false);
                //SwordRotation = 0;

            }

            if(t >= 0.45f)
            {
                swordAni = false;
                t = 0;
                inisiateSlice = false;
            }

            if (sliceEnergy)
            {
                //Energieverbrauch
                if (energy > SlashCost)
                {
                    energy -= SlashCost;
                }

                sliceEnergy = false;
            }

        }
        else
        {
            
        }



        //Show Energy
        energy /= 100;
        Energy.fillAmount = energy;

    }



}
