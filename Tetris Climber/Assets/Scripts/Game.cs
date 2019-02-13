using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Game : MonoBehaviour {


    //AudioSource Soundtrack;

    //Variables
    float EndHeight;
    float StartHeight;
    float HeightDifference;
    float t;
    bool SaveStartHeight = false;

    public bool godmode = false;

    float t2;

    public float scoreMultiplikator;
    float scoreMittelwert;
    float Score;
    float ScoreGesamt;
    float maxheightmulti;

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

    float a;

    public float FirstBlockage = 0;
    public float BlockageDistanceMin = 25;
    public float BlockageDistanceMax = 25;
    public float BlockageWidthMin = 3.3f;
    public float BlockageWidthMax = 4.3f;
    [Space]
    public float distancetodanger;

    [Space]

    public float blockFallingSpeed;    
    public float minFallingSpeed;
    public float maxFallingSpeed;
    public float FallingSpeedMultiplikator = 1;
   
    public static int gridWidth = 16;
    public static int gridHeight = 1000;

    public static Transform[,] grid = new Transform[gridWidth, gridHeight];
    [Space]
    public GameObject[] TetrisPrefab = new GameObject[6];
    public GameObject BlockagePrefab;

    public GameObject LaserPrefab;
    GameObject[] BlockageObject = new GameObject[40];
    GameObject LaserSpawner;
    
    int prefabRepeat = 9;
    bool spawnPrefab;
    bool startGame;
    bool pauseGame;
    bool options;
    bool dead;
    bool newHighscore;
    public bool shapePreviewOn;
    bool rayInitializing;

    int spawnBlocksLeftOrRight;
    bool DoItOnlyOnce;
    static int counterGameOver;
    bool loadSettings;

    public GameObject GameOverUI;
    public GameObject GameOver2UI;
    public GameObject Panel2;
    public GameObject InputField;
    public GameObject ContrastSlider;
    public GameObject BloomSlider;
    public GameObject CRTSlider;
    public GameObject VolumeSlider;
    public GameObject Eventsystem;
    public GameObject PlayAgain;

    GameObject Player;
    GameObject Deathcollider;
    public GameObject PauseMenuUI;
    GameObject OptionsMenuUI;
    GameObject HighscoreAlert;

    Vector3 LaserSpawnDirection;
    Vector3 SpawnerPos;

    GameObject Manager;


    void Awake()
    {
        OptionsMenuUI = GameObject.Find("OptionsMenu");
        PauseMenuUI = GameObject.Find("Pause");
        LaserSpawner = GameObject.Find("Laserspawner");
        shapePreviewOn = GameObject.Find("Shape Preview").GetComponent<Toggle>().isOn;
        Player = GameObject.Find("Player");

        blockagePosX = Random.Range(0, 2);
        SpawnBlockage();
        CheckBlockagePosition();
        LoadSettings();
    }

    //Start
    void Start()
    {

        //UPDATE SCOREBOARD
        if (PauseMenuUI.activeInHierarchy)
        {
            GameObject.Find("Highscore 1").GetComponent<Text>().text = PlayerPrefs.GetFloat("Highscore1").ToString("F0");
            GameObject.Find("Highscore 2").GetComponent<Text>().text = PlayerPrefs.GetFloat("Highscore2").ToString("F0");
            GameObject.Find("Highscore 3").GetComponent<Text>().text = PlayerPrefs.GetFloat("Highscore3").ToString("F0");
            GameObject.Find("Highscore 4").GetComponent<Text>().text = PlayerPrefs.GetFloat("Highscore4").ToString("F0");
            GameObject.Find("Highscore 5").GetComponent<Text>().text = PlayerPrefs.GetFloat("Highscore5").ToString("F0");

            GameObject.Find("Name 1").GetComponent<Text>().text = PlayerPrefs.GetString("Name1");
            GameObject.Find("Name 2").GetComponent<Text>().text = PlayerPrefs.GetString("Name2");
            GameObject.Find("Name 3").GetComponent<Text>().text = PlayerPrefs.GetString("Name3");
            GameObject.Find("Name 4").GetComponent<Text>().text = PlayerPrefs.GetString("Name4");
            GameObject.Find("Name 5").GetComponent<Text>().text = PlayerPrefs.GetString("Name5"); 
        }

        
        PauseMenuUI.SetActive(false);

        Deathcollider = GameObject.Find("Death Collider");

        GodMode();

        SpawnNextPrefab();

           /*  PlayerPrefs.SetFloat("Highscore5", 0);
               PlayerPrefs.SetFloat("Highscore4", 0);
               PlayerPrefs.SetFloat("Highscore3", 0);
               PlayerPrefs.SetFloat("Highscore2", 0);
               PlayerPrefs.SetFloat("Highscore1", 0);

                PlayerPrefs.SetString("Name5", "Name 5");
                PlayerPrefs.SetString("Name4", "Name 4");
                PlayerPrefs.SetString("Name3", "Name 3");
                PlayerPrefs.SetString("Name2", "Name 2");
                PlayerPrefs.SetString("Name1", "Name 1");      */
    }

    //Update
    private void Update() 
    {
        if(!loadSettings)
        {
            OptionsMenuUI.SetActive(false);
            loadSettings = true;
        }

        if (Player != null)
        {            
            if (spawnPrefab)
            {
                SpawnNextPrefab();
            }

            CheckBlockagePosition();

            if (Player.transform.position.y > BlockageObject[NrBlockages].transform.position.y && BlockageObject[NrBlockages+1] != null)
            {
                NrBlockages++;
            }

            MoveSpawnerToPlayer();
            UpdateMenu();
            UpdateMinoPos();
            //Stupid           

        }
        else
        {           

            if (!newHighscore)
            {
                GameOver();
                //Debug.Log("Game Over");
                //Debug.Log(ScoreGesamt);
            }
            else
            {
                GameOver2();
                //Debug.Log("Game Over2");               
            }

            SubmitThisShit();
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

    //delete grid
    public void DeleteGrid()
    {
        int UpdateLowestGridPos = Mathf.RoundToInt(Deathcollider.transform.position.y);
        int SpawnerPos = Mathf.RoundToInt(transform.position.y);

        if (UpdateLowestGridPos < 0) UpdateLowestGridPos = 0;

        for (int y = UpdateLowestGridPos; y < SpawnerPos; y++)
        {
            for (int x = 0; x < gridWidth; x++)
            {
                //if(y > Minoy)
                grid[x, y] = null;
            }
        }
    }

    //UPDATE MINO POS IN GRID
    public void UpdateMinoPos()
    {
        //UPDATE MINO POS IN GRID
        //Minos = GameObject.FindGameObjectsWithTag("Mino") as GameObject[];



        DeleteGrid();

        GameObject[] Minos = new GameObject[GameObject.FindGameObjectsWithTag("Mino").Length];
        
        Minos = GameObject.FindGameObjectsWithTag("Mino") as GameObject[];
       

        for (int i = 0; i < Minos.Length; i++)
        {
            int Minox = Mathf.RoundToInt(Minos[i].transform.position.x);
            int Minoy = Mathf.RoundToInt(Minos[i].transform.position.y + 1);
            int UpdateLowestGridPos = Mathf.RoundToInt(Deathcollider.transform.position.y);
            int SpawnerPos = Mathf.RoundToInt(transform.position.y);

            if(UpdateLowestGridPos < 0) UpdateLowestGridPos = 0;


            for (int y = UpdateLowestGridPos; y < SpawnerPos; y++)
            {
                for (int x = 0; x < gridWidth; x++)
                {
                    if (Minox == x && Minoy == y)
                    {
                        grid[x, y] = Minos[i].transform;
                    }

                    //if(grid[x,y] == null)
                    //grid[x, y] = ;
                }
            }
            
        }
    }

 

    //CLEARS MINO IN GRID
    public void DeleteMinoBudgetEdition(int x, int y)
    {
        //Collider Pos
        int UpdateLowestGridPos = Mathf.RoundToInt(Deathcollider.transform.position.y);

        //Delete Grid
        for (int iy = 0; iy < gridHeight; iy++)
        {
            grid[x, iy] = null;
        }

        Debug.Log("x "+x);
        Debug.Log("y "+y);
    }

    //UpdateMino In Grid
    public void UpdateMinoBudgetEdition(int x, int y, Transform mino)
    {
        //Update Grid
        grid[x, y] = mino;

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
            spawnPosX = 4;
        }
        else if (spawnBlocksLeftOrRight == 0)
        {
            spawnPosX = 12;
        }
        else if(spawnBlocksLeftOrRight == 2)
        {
            spawnPosX = 8;
        }

        if (Physics.Raycast(CheckUnderSpawner, out hit, 2))
        {
            if (hit.transform.tag == "Mino")
            {
                if (!Physics.Raycast(CheckUnderSpawnerLeft, out hit, 2))
                {
                    if (offsetPos == 0)
                    {
                        spawnPosX = 4;
                    }
                }
                else if (!Physics.Raycast(CheckUnderSpawnerRight, out hit, 2))
                {
                    spawnPosX = 12;
                }

                if (!Physics.Raycast(CheckUnderSpawnerRight, out hit, 2))
                {
                    if (offsetPos == 1)
                    {
                        spawnPosX = 12;
                    }
                }
                else if (!Physics.Raycast(CheckUnderSpawnerLeft, out hit, 2))
                {
                    spawnPosX = 4;
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
                        spawnPosX = 4;
                    }
                }
                else if (!Physics.Raycast(CheckUnderSpawner, out hit, 2))
                {
                    spawnPosX = 8;
                }

                if (!Physics.Raycast(CheckUnderSpawner, out hit, 2))
                {
                    if (offsetPos == 1)
                    {
                        spawnPosX = 8;
                    }
                }
                else if (!Physics.Raycast(CheckUnderSpawnerLeft, out hit, 2))
                {
                    spawnPosX = 4;
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
                        spawnPosX = 8;
                    }
                }
                else if (!Physics.Raycast(CheckUnderSpawnerRight, out hit, 2))
                {
                    spawnPosX = 12;
                }

                if (!Physics.Raycast(CheckUnderSpawnerRight, out hit, 2))
                {
                    if (offsetPos == 1)
                    {
                        spawnPosX = 12;
                    }
                }
                else if (!Physics.Raycast(CheckUnderSpawner, out hit, 2))
                {
                    spawnPosX = 8;
                }
            }
        }

        //Schiebt Spawner nach Oben Falls alles voll ist
        if (Physics.Raycast(CheckUnderSpawner, out hit, 2) && Physics.Raycast(CheckUnderSpawnerLeft, out hit, 2) && Physics.Raycast(CheckUnderSpawnerRight, out hit, 2))
        {
            if(hit.transform.tag == "Mino")
            {
                transform.position = new Vector3(transform.position.x, transform.position.y + 10, transform.position.z);
                CheckUnderSpawner = new Ray(transform.position, Vector3.down);
                CheckUnderSpawnerLeft = new Ray(new Vector3(transform.position.x - 4, transform.position.y, transform.position.z), Vector3.down);
                CheckUnderSpawnerRight = new Ray(new Vector3(transform.position.x + 5, transform.position.y, transform.position.z), Vector3.down);
            }
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
        for (int i = 0; i < 40; i++)
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
            BlockageObject[i].transform.localScale = new Vector3(blockageWidth, 2, 2.87f);

            if(BlockageObject[i].transform.position.y > 519)
            {
                Destroy(BlockageObject[i]);
            }

            //Spawn Laser
            laserrot = Random.Range(0, 2);


            if(laserrot == 0)
            {
                LaserRot = 0;
                laserposx = -4;
                LaserSpawnDirection = new Vector3(-30, 0, 0);

            }
            else if(laserrot == 1)
            {
                LaserRot = 0;
                laserposx = 18;
                LaserSpawnDirection = new Vector3(30, 0, 0);
            }

            LaserSpawner.transform.position = new Vector3(LaserSpawner.transform.position.x, blockageAbstand / 2, LaserSpawner.transform.position.z);

            //LaserSpawnerRay
            RaycastHit hit;
            Ray SpawnLaser = new Ray(new Vector3(LaserSpawner.transform.position.x, LaserSpawner.transform.position.y, LaserSpawner.transform.position.z), LaserSpawnDirection);

            if(Physics.Raycast(SpawnLaser, out hit))
            {
                if(hit.transform.tag == "Wall")
                {
                    laserposx = hit.point.x;
                    //Debug.Log("WallHIT " + hit.point.x);
                }

            }


                Instantiate(LaserPrefab, new Vector3(laserposx, blockageposY + blockageAbstand / 2, 0), new Quaternion(0, LaserRot, 0, 0)).name = "Laser "+i;
                GameObject.Find("Lasermodel").name = "Lasermodel " + i;
                GameObject.Find("Lasermodel " + i).transform.position = new Vector3(
                laserposx,
                GameObject.Find("Lasermodel " + i).transform.position.y,
                GameObject.Find("Lasermodel " + i).transform.position.z
                );

            //Flip Lasermodel
            if (laserrot == 1)
            {
                GameObject.Find("Lasermodel " + i).transform.Rotate(0, 0, 180);
                GameObject.Find("Lasermodel " + i).transform.position = new Vector3(
                GameObject.Find("Lasermodel " + i).transform.position.x, 
                GameObject.Find("Lasermodel " + i).transform.position.y, 
                GameObject.Find("Lasermodel " + i).transform.position.z);
            }
        }
    }


    void CheckBlockagePosition()
    {
        if (BlockageObject[NrBlockages].transform.position.x < -9)
        {
            if(Player.transform.position.x > 5.5f)
            {
                spawnBlocksLeftOrRight = 0;
            }
            else if(Player.transform.position.x < 5.5f)
            {
                spawnBlocksLeftOrRight = 2;
            }

           

        }

        else if (BlockageObject[NrBlockages].transform.position.x > 24)
        {
            if (Player.transform.position.x < 9.5f)
            {
                spawnBlocksLeftOrRight = 1;                
            }
            else if(Player.transform.position.x > 9.5f)
            {
                spawnBlocksLeftOrRight = 2;
            }
        }

        if(BlockageObject[NrBlockages + 1] == null)
        {
            spawnBlocksLeftOrRight = 2;
        }
    }

    //Set Spawner To Player Position
    void MoveSpawnerToPlayer ()
    {
        Vector3 PlayerPos = Player.transform.position;

        PlayerPos.y += 15;

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
            playerheight *= FallingSpeedMultiplikator;
            blockFallingSpeed = minFallingSpeed * 100 + playerheight;
            blockFallingSpeed /= 100;

        }
    }

    void UInput()
    {
        if (Input.GetKeyUp("escape") && Time.timeScale == 1.0f && !OptionsMenuUI.activeInHierarchy || Input.GetKeyUp(KeyCode.Joystick1Button9) && Time.timeScale == 1.0f && !OptionsMenuUI.activeInHierarchy)
        {
            PauseMenuUI.SetActive(true);
            Time.timeScale = 0;
            //AudioListener.volume = 0.5f;
        }
        else if (Input.GetKeyUp("escape") && Time.timeScale == 0 && !OptionsMenuUI.activeInHierarchy || Input.GetKeyUp(KeyCode.Joystick1Button9) && Time.timeScale == 0 && !OptionsMenuUI.activeInHierarchy)
        {
            PauseMenuUI.SetActive(false);
            Time.timeScale = 1.0f;
        }

        if(OptionsMenuUI.activeInHierarchy && Input.GetKeyUp("escape"))
        {
            shapePreviewOn = GameObject.Find("Shape Preview").GetComponent<Toggle>().isOn;
            PauseMenuUI.SetActive(false);
            OptionsMenuUI.SetActive(false);
            Time.timeScale = 1.0f;
        }


        if(OptionsMenuUI.activeInHierarchy || PauseMenuUI.activeInHierarchy)
        {
            FindObjectOfType<BlockMovement>().enabled = false;
            FindObjectOfType<PlayerMovement>().enabled = false;
            AkSoundEngine.SetState("PlayState", "Pausing");
        }
        else
        {
            FindObjectOfType<BlockMovement>().enabled = true;
            FindObjectOfType<PlayerMovement>().enabled = true;
            AkSoundEngine.SetState("PlayState", "Playing");
            MusicVolume();
        }
            
        

    } 

    void ShapePreview ()
    {
        if (OptionsMenuUI.activeInHierarchy)
        {
            shapePreviewOn = GameObject.Find("Shape Preview").GetComponent<Toggle>().isOn;

            if (shapePreviewOn)
            {
                PlayerPrefs.SetInt("ShapePreview", 1);
            }
            else
            {
                PlayerPrefs.SetInt("ShapePreview", 0);
            }
        }
    }


    //GUI
    void UpdateMenu()
    {

        UInput();
        GameTime();
        PlayerHeight();
        DistanceToDanger();
        DynamicScoreSystem();
        

        if(PlayerPrefs.GetFloat("Highscore5") < ScoreGesamt)
        {
            newHighscore = true;
        }
        else
        {
            newHighscore = false;
        }

    }

    

    public void SubmitName()
    {
        //GameObject.Find("Input Name").GetComponent<InputField>().text;

        SaveScore();

        Debug.Log(GameObject.Find("Input Name").GetComponent<InputField>().text);
    }

    public void SubmitNameShortcut()
    {
        if(Input.GetKeyUp(KeyCode.Return) || Input.GetKeyUp("joystick button 9"))
        {
            SubmitName();
            InputField.SetActive(false);
            Panel2.SetActive(true);
            Eventsystem.GetComponent<UnityEngine.EventSystems.EventSystem>().SetSelectedGameObject(PlayAgain);
            
        }

    }

    public void SubmitThisShit()
    {
        if(PlayAgain.activeInHierarchy)
        {
            if (Input.GetKeyDown(KeyCode.Return) && Eventsystem.GetComponent<UnityEngine.EventSystems.EventSystem>().currentSelectedGameObject == PlayAgain || Input.GetKeyDown("joystick button 9") && Eventsystem.GetComponent<UnityEngine.EventSystems.EventSystem>().currentSelectedGameObject == PlayAgain)
            {
                Restart();                
            }

            if (Input.GetKeyDown(KeyCode.Return) && Eventsystem.GetComponent<UnityEngine.EventSystems.EventSystem>().currentSelectedGameObject == GameObject.Find("Quit") || Input.GetKeyDown("joystick button 9") && Eventsystem.GetComponent<UnityEngine.EventSystems.EventSystem>().currentSelectedGameObject == GameObject.Find("Quit"))
            {
                MainMenu();
            }

            if (Input.GetAxis("Vertical") < 0)
            {
                Eventsystem.GetComponent<UnityEngine.EventSystems.EventSystem>().SetSelectedGameObject(GameObject.Find("Quit"));
            }

            if (Input.GetAxis("Vertical") > 0)
            {
                Eventsystem.GetComponent<UnityEngine.EventSystems.EventSystem>().SetSelectedGameObject(PlayAgain );
            }

        }
       
    }


    public void Continue()
    {
        PauseMenuUI.SetActive(false);
        Time.timeScale = 1.0f;
        FindObjectOfType<BlockMovement>().enabled = true;
    }

    public void Quit()
    {       
        Application.Quit();   
    }

    public void Restart()
    {
        AkSoundEngine.StopAll();
        
        SceneManager.LoadScene(1);
        
        Time.timeScale = 1.0f;
    }

    public void MainMenu()
    {
        Time.timeScale = 1;
        AkSoundEngine.StopAll();
        SceneManager.LoadScene(0);
    }
 
    public void GameOver()
    {
        GameOverUI.SetActive(true);
        if(!DoItOnlyOnce)
        {
            if (counterGameOver > 5)
            {
                int randomGameOver = Random.Range(0, FindObjectOfType<GameOverSammlung>().GameOver.Length);
                GameObject.Find("GameOverValue").GetComponent<Text>().text = FindObjectOfType<GameOverSammlung>().GameOver[randomGameOver];
            }
            else
            {
                GameObject.Find("GameOverValue").GetComponent<Text>().text = FindObjectOfType<GameOverSammlung>().GameOver[counterGameOver];
            }

            GameObject.Find("scorevalue").GetComponent<Text>().text = maxplayerheight.ToString("F0") + " m";
            GameObject.Find("realscorevalue").GetComponent<Text>().text = "SCORE: "+ ScoreGesamt.ToString("F0");
            DoItOnlyOnce = true;

            counterGameOver++;
        }
    }

    public void GameOver2()
    {
        GameOver2UI.SetActive(true);
        if (!DoItOnlyOnce)
        {

            if (counterGameOver > 5)
            {
                int randomGameOver = Random.Range(0, FindObjectOfType<GameOverSammlung>().GameOver.Length);
                GameObject.Find("GameOverText").GetComponent<Text>().text = FindObjectOfType<GameOverSammlung>().GameOver[randomGameOver];
            }
            else
            {
                GameObject.Find("GameOverText").GetComponent<Text>().text = FindObjectOfType<GameOverSammlung>().GameOver[counterGameOver];
            }

            GameObject.Find("scorevalue").GetComponent<Text>().text = maxplayerheight.ToString("F0") + " m";
            GameObject.Find("realscorevalue").GetComponent<Text>().text = "SCORE: " + ScoreGesamt.ToString("F0");
            DoItOnlyOnce = true;

            counterGameOver++;
        }
        

        if(PlayerPrefs.GetFloat("Highscore1") < maxplayerheight)
        {
            //RectTransform rt = GameObject.Find("GameOverText").GetComponent<RectTransform>();
            //rt.sizeDelta = new Vector2(500, 81.2f);
            GameObject.Find("GameOverText").GetComponent<Text>().text = "NEW HIGHSCORE";
            GameObject.Find("GameOverText").GetComponent<Text>().color = Color.green;
            //new Color32(254, 152, 203, 255); 
        } 
    }


    void DynamicScoreSystem()
    {
        //Time
        t += 1 * Time.deltaTime;
        //Debug.Log(t);

        //Calculate Score Multiplikator
        scoreMultiplikator = maxplayerheight / gametime;
        FindObjectOfType<DeathCollider>().SpeedMultiplikator = scoreMultiplikator;

        //Debug.Log(scoreMultiplikator);
        maxheightmulti = maxplayerheight / 100;
        maxheightmulti = maxheightmulti + 1; 
        scoreMultiplikator = scoreMultiplikator + maxheightmulti;
        

        //Set Startheight to Playerheight
        if (!SaveStartHeight)
        {
            StartHeight = maxplayerheight;
            SaveStartHeight = true;
        }

        //After 5 seconds do something 
        if (t >= 1)
        {
            //Set Endheight to Playerheight
            EndHeight = maxplayerheight;

            //Climbed in Last 5 Seconds
            if (EndHeight >= StartHeight)
                HeightDifference = EndHeight - StartHeight;
                //Debug.Log(HeightDifference);

            //Calculate Score
            Score = HeightDifference * scoreMultiplikator;
            //Debug.Log("Score :   "+ Score);

            //Calculate Gesamt Score
            ScoreGesamt = ScoreGesamt + Score;
            //Debug.Log("Scoregesamt : " +ScoreGesamt);

            //Reset Everything
            SaveStartHeight = false;
            t = 0;
        }
    }


    void PlayerHeight()
    {
        playerheight = Player.transform.position.y;
        if (playerheight < 0) playerheight = 0;
        GameObject.Find("heightvalue").GetComponent<Text>().text = playerheight.ToString("F0");
        if(playerheight > maxplayerheight && FindObjectOfType<PlayerMovement>().grounded)
        {
            maxplayerheight = playerheight;
        }
    }

    void GameTime() 
    {
        gametime += Time.deltaTime;
        //GameObject.Find("timevalue").GetComponent<Text>().text = gametime.ToString("F0")+" s";
    }

    void DistanceToDanger()
    {
        distancetodanger = Player.transform.position.y - Deathcollider.transform.position.y - 10.7f;
        GameObject.Find("dangervalue").GetComponent<Text>().text = distancetodanger.ToString("F1");
        AkSoundEngine.SetRTPCValue("Danger", distancetodanger);
    }

    public void SaveScore()
    {
        if (PlayerPrefs.GetFloat("Highscore5") < ScoreGesamt)
        {
            if (PlayerPrefs.GetFloat("Highscore4") < ScoreGesamt)
            {
                if (PlayerPrefs.GetFloat("Highscore3") < ScoreGesamt)
                {
                    if (PlayerPrefs.GetFloat("Highscore2") < ScoreGesamt)
                    {
                        if (PlayerPrefs.GetFloat("Highscore1") < ScoreGesamt)
                        {
                            PlayerPrefs.SetFloat("Highscore5", PlayerPrefs.GetFloat("Highscore4"));
                            PlayerPrefs.SetString("Name5", PlayerPrefs.GetString("Name4"));
                            PlayerPrefs.SetFloat("Highscore4", PlayerPrefs.GetFloat("Highscore3"));
                            PlayerPrefs.SetString("Name4", PlayerPrefs.GetString("Name3"));
                            PlayerPrefs.SetFloat("Highscore3", PlayerPrefs.GetFloat("Highscore2"));
                            PlayerPrefs.SetString("Name3", PlayerPrefs.GetString("Name2"));
                            PlayerPrefs.SetFloat("Highscore2", PlayerPrefs.GetFloat("Highscore1"));
                            PlayerPrefs.SetString("Name2", PlayerPrefs.GetString("Name1"));
                            PlayerPrefs.SetFloat("Highscore1", ScoreGesamt);
                            PlayerPrefs.SetString("Name1", GameObject.Find("Input Name").GetComponent<InputField>().text);
                        }
                        else
                        {
                            PlayerPrefs.SetFloat("Highscore5", PlayerPrefs.GetFloat("Highscore4"));
                            PlayerPrefs.SetString("Name5", PlayerPrefs.GetString("Name4"));
                            PlayerPrefs.SetFloat("Highscore4", PlayerPrefs.GetFloat("Highscore3"));
                            PlayerPrefs.SetString("Name4", PlayerPrefs.GetString("Name3"));
                            PlayerPrefs.SetFloat("Highscore3", PlayerPrefs.GetFloat("Highscore2"));
                            PlayerPrefs.SetString("Name3", PlayerPrefs.GetString("Name2"));
                            PlayerPrefs.SetFloat("Highscore2", ScoreGesamt);
                            PlayerPrefs.SetString("Name2", GameObject.Find("Input Name").GetComponent<InputField>().text);
                        }
                    }
                    else
                    {
                        PlayerPrefs.SetFloat("Highscore5", PlayerPrefs.GetFloat("Highscore4"));
                        PlayerPrefs.SetString("Name5", PlayerPrefs.GetString("Name4"));
                        PlayerPrefs.SetFloat("Highscore4", PlayerPrefs.GetFloat("Highscore3"));
                        PlayerPrefs.SetString("Name4", PlayerPrefs.GetString("Name3"));
                        PlayerPrefs.SetFloat("Highscore3", ScoreGesamt);
                        PlayerPrefs.SetString("Name3", GameObject.Find("Input Name").GetComponent<InputField>().text);
                    }
                }
                else
                {
                    PlayerPrefs.SetFloat("Highscore5", PlayerPrefs.GetFloat("Highscore4"));
                    PlayerPrefs.SetString("Name5", PlayerPrefs.GetString("Name4"));
                    PlayerPrefs.SetFloat("Highscore4", ScoreGesamt);
                    PlayerPrefs.SetString("Name4", GameObject.Find("Input Name").GetComponent<InputField>().text);
                }
            }
            else
            {
                PlayerPrefs.SetFloat("Highscore5", ScoreGesamt);              
                PlayerPrefs.SetString("Name5", GameObject.Find("Input Name").GetComponent<InputField>().text);
            }
        }

    }

    public void SaveSettings()
    {
        //PlayerPrefs.SetFloat("Settings1", );
    }

    

    public void LoadSettings()
    {
        ContrastSlider.GetComponent<Slider>().value = PlayerPrefs.GetFloat("Settings1");
        BloomSlider.GetComponent<Slider>().value = PlayerPrefs.GetFloat("Settings2");
        CRTSlider.GetComponent<Slider>().value = PlayerPrefs.GetFloat("Settings3");
    }

    public void MouseHover() 
    {
        AkSoundEngine.PostEvent("ButtonClick", gameObject);
    }

    void MusicVolume()
    {
        float musicVolume = VolumeSlider.GetComponent<Slider>().value;
        AkSoundEngine.SetRTPCValue("MusicVolume", musicVolume);
       
    }

    void GodMode()
    {
        if (godmode)
        {            
                GameObject.Find("Death Trigger").SetActive(false);
                GameObject.Find("Death Trigger (1)").SetActive(false);
            
        }
    }
}

