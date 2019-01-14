using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Game : MonoBehaviour {

    AudioSource Soundtrack;

    float playerheight;
    float maxplayerheight;
    float gametime;

    int NrBlockages;

    int blockagePosX;
    float blockageposX = 0;
    float blockageposY = 0;
    float blockageAbstand = 0;

    float laserposy;
    float laserposx;
    int LaserRot;

    public float FirstBlockage = 0;
    public float BlockageDistanceMin = 25;
    public float BlockageDistanceMax = 25;
    public float BlockageWidthMin = 3.3f;
    public float BlockageWidthMax = 4.3f;

    public float distancetodanger;

    public float blockFallingSpeed;
    public float minFallingSpeed;
    public float maxFallingSpeed;
   
    public static int gridWidth = 16;
    public static int gridHeight = 500;

    public static Transform[,] grid = new Transform[gridWidth, gridHeight];

    public GameObject[] TetrisPrefab = new GameObject[6];
    public GameObject BlockagePrefab;
    public GameObject LaserPrefab;
    GameObject[] BlockageObject = new GameObject[30];


    int prefabRepeat = 9;
    bool spawnPrefab;
    bool startGame;
    bool pauseGame;
    bool options;
    bool dead;

    bool rayInitializing;

    int spawnBlocksLeftOrRight;



    public GameObject GameOverUI;
    GameObject Player;
    GameObject Deathcollider;
    GameObject PauseMenuUI;
    GameObject OptionsMenuUI;


    Vector3 SpawnerPos;

    void Awake()
    {
        OptionsMenuUI = GameObject.Find("OptionsMenu");
        PauseMenuUI = GameObject.Find("Pause");
        blockagePosX = Random.Range(0, 2);
        SpawnBlockage();
        CheckBlockagePosition();
    }

    //Start
    void Start()
    {
        OptionsMenuUI.SetActive(false);

        Player = GameObject.Find("Player");
        Deathcollider = GameObject.Find("Death Collider");

  

        SpawnNextPrefab();
    }

    //Update
    private void Update()
    {
        if(Input.GetKeyUp("p"))
        {
            UpdateMino();
        }


        if (Player != null)
        {
            if (spawnPrefab)
            {
                SpawnNextPrefab();
            }

            CheckBlockagePosition();

            if (Player.transform.position.y > BlockageObject[NrBlockages].transform.position.y+2)
            {
                NrBlockages++;
            }

            MoveSpawnerToPlayer();
            GameTime();
            PlayerHeight();
            DistanceToDanger();
            UpdateMenu();

        }
        else
        {
            GameOver();
        }
    }

    public void UpdateMino()
    {
        for (int y = 0; y < gridHeight; y++)
        {
            for (int x = 0; x < gridWidth; x++)
            {
                if (grid[x,y] != null)
                {
                    
                }
            }
        }
    }

    //Grid
    public void UpdateGrid(BlockMovement tetrisBlock)
    {
        for (int y = 0; y < gridHeight; y++)
        {
            for (int x = 0; x < gridWidth; x++)
            {
                if (grid[x, y] != null)
                {
                    if (grid[x, y].parent == tetrisBlock.transform)
                    {
                        grid[x, y] = null;
                    }
                }
            }
        }

        foreach (Transform mino in tetrisBlock.transform)
        {
            Vector3 pos = Round(mino.position);

            if (pos.y < gridHeight)
            {
                grid[(int)pos.x, (int)pos.y] = mino;
            }
        }
    }


    //Blockage Grid
    /*  void UpdateGridBlockage()
      {
          for (int y = 0; y < gridHeight; y++)
          {
              for (int x = 0; x < gridWidth; x++)
              {
                  if (grid[x, y] != null)
                  {
                      if (grid[x, y].parent == BlockageObject[1].transform)
                      {
                          grid[x, y] = null;
                      }
                  }
              }
          }

          foreach (Transform mino in BlockageObject[1].transform)
          {
              Vector3 pos = Round(mino.position);

              if (pos.y < gridHeight)
              {
                  grid[(int)pos.x, (int)pos.y] = mino;
              }
          }
      }*/

    public Transform GetTransformAtGridPosition(Vector3 pos) {

        if (pos.y > gridHeight - 1)
        {
            return null;
        }
        else
        {
            return grid[(int)pos.x, (int)pos.y];
        }

    }


    public bool CheckIsInsideGrid(Vector3 pos)
    {
        return ((int)pos.x >= 0 && (int)pos.x < gridWidth && (int)pos.y >= 0 && (int)pos.z == 0);
    }

    public Vector3 Round(Vector3 pos)
    {
        return new Vector3(Mathf.Round(pos.x), Mathf.Round(pos.y), Mathf.Round(pos.z));
    }

    //MOVE DOWN
    public void MoveRowDown(int x, int y)
    {
        
              
        grid[x, y] = null;


        //grid[x,y].localPosition += new Vector3(0, -1, 0);


    }

    //Spawn Tetris Block
    public void SpawnNextPrefab()
    {

        RaycastHit hit;
        Ray CheckUnderSpawner = new Ray(transform.position, Vector3.down);
        Debug.DrawRay(transform.position, Vector3.down);
        Ray CheckUnderSpawnerLeft = new Ray(new Vector3(transform.position.x - 4, transform.position.y, transform.position.z), Vector3.down);
        Debug.DrawRay(new Vector3(transform.position.x - 4, transform.position.y, transform.position.z), Vector3.down);
        Ray CheckUnderSpawnerRight = new Ray(new Vector3(transform.position.x + 5, transform.position.y, transform.position.z), Vector3.down);
        Debug.DrawRay(new Vector3(transform.position.x + 5, transform.position.y, transform.position.z), Vector3.down);

        int randomPrefab = Random.Range(0, 5);
        int flipPrefab = Random.Range(0, 2);
        int offsetPos = Random.Range(0, 2);
        int rot = 0;
        float spawnPosX = transform.position.x;

        if (spawnBlocksLeftOrRight == 1)
        {
            spawnPosX = 2;
        }
        else if (spawnBlocksLeftOrRight == 0)
        {
            spawnPosX = 11;
        }

        if (Physics.Raycast(CheckUnderSpawner, out hit, 2))
        {
            if (hit.transform.tag == "Mino")
            {
                if (!Physics.Raycast(CheckUnderSpawnerLeft, out hit, 2))
                {
                    if (offsetPos == 0)
                    {
                        spawnPosX = 2;
                    }
                }
                else if (!Physics.Raycast(CheckUnderSpawnerRight, out hit, 2))
                {
                    spawnPosX = 11;
                }

                if (!Physics.Raycast(CheckUnderSpawnerRight, out hit, 2))
                {
                    if (offsetPos == 1)
                    {
                        spawnPosX = 11;
                    }
                }
                else if (!Physics.Raycast(CheckUnderSpawnerLeft, out hit, 2))
                {
                    spawnPosX = 2;
                }
            }
        }

        if (Physics.Raycast(CheckUnderSpawnerRight, out hit, 2))
        {
            if (hit.transform.tag == "Mino")
            {
                if (!Physics.Raycast(CheckUnderSpawnerLeft, out hit, 2))
                {
                    if (offsetPos == 0)
                    {
                        spawnPosX = 2;
                    }
                }
                else if (!Physics.Raycast(CheckUnderSpawner, out hit, 2))
                {
                    spawnPosX = 6.5f;
                }

                if (!Physics.Raycast(CheckUnderSpawner, out hit, 2))
                {
                    if (offsetPos == 1)
                    {
                        spawnPosX = 6.5f;
                    }
                }
                else if (!Physics.Raycast(CheckUnderSpawnerLeft, out hit, 2))
                {
                    spawnPosX = 2;
                }
            }
        }

        if (Physics.Raycast(CheckUnderSpawnerLeft, out hit, 2))
        {
            if (hit.transform.tag == "Mino")
            {
                if (!Physics.Raycast(CheckUnderSpawner, out hit, 2))
                {
                    if (offsetPos == 0)
                    {
                        spawnPosX = 6.5f;
                    }
                }
                else if (!Physics.Raycast(CheckUnderSpawnerRight, out hit, 2))
                {
                    spawnPosX = 11;
                }

                if (!Physics.Raycast(CheckUnderSpawnerRight, out hit, 2))
                {
                    if (offsetPos == 1)
                    {
                        spawnPosX = 11;
                    }
                }
                else if (!Physics.Raycast(CheckUnderSpawner, out hit, 2))
                {
                    spawnPosX = 6.5f;
                }
            }
        }

        if (Physics.Raycast(CheckUnderSpawner, out hit, 2) && Physics.Raycast(CheckUnderSpawnerLeft, out hit, 2) && Physics.Raycast(CheckUnderSpawnerRight, out hit, 2))
        {

            transform.position = new Vector3(transform.position.x, transform.position.y + 10, transform.position.z);
            CheckUnderSpawner = new Ray(transform.position, Vector3.down);
            CheckUnderSpawnerLeft = new Ray(new Vector3(transform.position.x - 4, transform.position.y, transform.position.z), Vector3.down);
            CheckUnderSpawnerRight = new Ray(new Vector3(transform.position.x + 5, transform.position.y, transform.position.z), Vector3.down);
        }

        if (randomPrefab == prefabRepeat)
        {
            while (randomPrefab == prefabRepeat)
            {
                randomPrefab = Random.Range(0, 5);
            }

        }

        if (randomPrefab == 0 || randomPrefab == 1)
        {
            if (flipPrefab == 0)
            {
                rot = 180;
            }
            else
            {
                rot = 0;
            }
        }


        Instantiate(TetrisPrefab[randomPrefab], new Vector3(spawnPosX, transform.position.y, transform.position.z), new Quaternion(0, rot, 0, 0));

        prefabRepeat = randomPrefab;
        spawnPrefab = false;

        BlockFallingSpeed();
    }


    //Spawn Engpässe
    void SpawnBlockage()
    {
        for (int i = 0; i < 30; i++)
        {
            blockageAbstand = Random.Range(BlockageDistanceMin, BlockageDistanceMax);

            int rot = 0;
            int laserrot = 0;
            float blockageWidth = 0;            


            if (blockagePosX % 2 == 0)
            {
                rot = 0;
                blockageWidth = Random.Range(BlockageWidthMin, BlockageWidthMax);
                blockageposX = -10;
            }
            else
            {
                rot = 180;
                blockageWidth = Random.Range(BlockageWidthMin, BlockageWidthMax);
                blockageposX = 25;
            }
            blockagePosX++;

            //BlockagePrefab.transform.localScale = new Vector3(blockageWidth, 2, 8.37f);

            Instantiate(BlockagePrefab, new Vector3(blockageposX, blockageposY += blockageAbstand + FirstBlockage, -0.4f), new Quaternion(0, rot, 0, 0)).name = "Blockage " + i;
            FirstBlockage = 0;

            BlockageObject[i] = GameObject.Find("Blockage " + i);

            //Spawn Laser
            laserrot = Random.Range(0, 2);

            if(laserrot == 0)
            {
                LaserRot = 0;
                laserposx = -4;
            }
            else if(laserrot == 1)
            {
                LaserRot = 0;
                laserposx = 18;
            } 

           Instantiate(LaserPrefab, new Vector3(laserposx, blockageposY + blockageAbstand / 2, 0), new Quaternion(0, LaserRot, 0, 0));
        }
    }


    void CheckBlockagePosition()
    {
        if (BlockageObject[NrBlockages].transform.position.x < -9)
        {
            spawnBlocksLeftOrRight = 0;
        }

        else if (BlockageObject[NrBlockages].transform.position.x > 24)
        {
            spawnBlocksLeftOrRight = 1;
        }
    }

    //Set Spawner To Player Position
    void MoveSpawnerToPlayer ()
    {
        Vector3 PlayerPos = Player.transform.position;

        PlayerPos.y += 20;

        if(PlayerPos.y > transform.position.y)
        {
            transform.position = new Vector3(transform.position.x, PlayerPos.y, transform.position.z);
        }       
    }

    //Increase Block Fallingspeed
    void BlockFallingSpeed()
    {
        if(blockFallingSpeed < maxFallingSpeed)
        {
            blockFallingSpeed = minFallingSpeed;
            blockFallingSpeed = minFallingSpeed * 100 + playerheight;
            blockFallingSpeed /= 100;

        }
    }

    //GUI
    void UpdateMenu()
    {

        if (Input.GetKeyUp("escape") && Time.timeScale == 1.0 || Input.GetKeyUp("joystick button 9") && Time.timeScale == 1.0)
        {
            pauseGame = true;

        }
        else if (Input.GetKeyUp("escape") && Time.timeScale == 0 || Input.GetKeyUp("joystick button 9") && Time.timeScale == 0 || Input.GetKeyUp("joystick button 2") && Time.timeScale == 0)
        {
            pauseGame = false;
            options = false;
        }

        if(pauseGame)
        {
            PauseMenuUI.SetActive(true);
            Time.timeScale = 0;
            FindObjectOfType<BlockMovement>().enabled = false;

        }

        if (!pauseGame)
        {
            PauseMenuUI.SetActive(false);
            Time.timeScale = 1.0f;
            FindObjectOfType<BlockMovement>().enabled = true;
        }

        if(options)
        {
            OptionsMenuUI.SetActive(true);
            FindObjectOfType<BlockMovement>().enabled = false;
            Time.timeScale = 0;
        }

        if(!options)
        {
            OptionsMenuUI.SetActive(false);
            FindObjectOfType<BlockMovement>().enabled = true;
            Time.timeScale = 1.0f;
        }

    }

    

    public void Stop()
    {
        // pauseGame = true;
        // options = false;
        // UpdateMenu();
        // Time.timeScale = 1.0f;

    }

    public void OptionsMenu()
    {
        pauseGame = false;
        options = true;
    }

    public void GoBack()
    {
        //PauseMenuUI.SetActive(true);


        //Debug.Log("Youre Working?");
        //pauseGame = false;
        //options = false;
        //UpdateMenu();
    }

    public void Continue()
    {
        pauseGame = false;
    }

    public void Quit()
    {
        Application.Quit();   
    }

    public void Restart()
    {
        SceneManager.LoadScene(1);
    }

    public void MainMenu()
    {
        SceneManager.LoadScene(0);
    }

    public void GameOver()
    {
        GameOverUI.SetActive(true);
        GameObject.Find("scorevalue").GetComponent<Text>().text = maxplayerheight.ToString("F2") + " m";
    }

    void PlayerHeight()
    {
        playerheight = Player.transform.position.y;
        if (playerheight < 0) playerheight = 0;
        GameObject.Find("heightvalue").GetComponent<Text>().text = playerheight.ToString("F2")+" m";
        maxplayerheight = playerheight;
    }

    void GameTime() 
    {
        gametime += 1 * Time.deltaTime;
        GameObject.Find("timevalue").GetComponent<Text>().text = gametime.ToString("F0")+" s";
    }

    void DistanceToDanger()
    {
        distancetodanger = Player.transform.position.y - Deathcollider.transform.position.y - 10.05f;
        GameObject.Find("dangervalue").GetComponent<Text>().text = distancetodanger.ToString("F2") + " m";
    }


}

