# Pentagon-Policy-Editor-
A ChromeOS user policy editor based on Pollen Policy Editor. 


This creates a new directory at etc/opt/chrome/policies/managed, then it loads a file that replaces the policy.json file witha custom one. 
Please have rootFS verification disabled or use the following command to disable RootFS verification:

```bash
sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk0 --remove_rootfs_verification --partitions 2
```
>[!Warning]
>**Using this could get you in trouble with your school or brick your device if used incorrectly I am not liable for any losses or damage, nor are my associates at NonagonFactory nor are the creators of Pollen or Lilac.**

>[!Note]
>**This is specifically directed at my friend who said that this editor failed and re-enrolled his chromebook, to which I say, no that isn't my fault, you did somehting wrong on your end and stop blaming me for your problems**

Run the following command as **Root** to run the editor:

```bash
curl -Ls https://raw.githubusercontent.com/TH3W0RKsh0P/PentagonPolicyEditor-UPDATED-/main/Pentagon.sh | bash
```

>[!Note]
>**If this did not work please use the rootfs disable script, then try again, thank you**
