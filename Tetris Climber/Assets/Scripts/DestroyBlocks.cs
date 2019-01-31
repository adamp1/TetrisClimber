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
            Sword.SetActive(true);
            swordAni = true;

            //  SwordPos = Sword.transform.position;


            if (lookRight)
            {
                SwordRotationY = 0;

                if (SwordRotation < 90)
                {
                    SwordRotation += 1 * Slice_Speed * Slice_Friction;
                }
            }

            if (lookLeft)
            {
                SwordRotationY = -180;

                if (SwordRotation > -90)
                {
                    SwordRotation += 1 * Slice_Speed * Slice_Friction;
                }
            }


            Sword.transform.rotation = Quaternion.Euler(0, SwordRotationY, SwordRotation);


            if (SwordRotation == 90)
            {
                inisiateSlice = false;
                swordAni = false;
                SwordRotation = 0;
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
            Sword.SetActive(false);
        }




        //Show Energy
        energy /= 100;
        Energy.fillAmount = energy;

    }



}
