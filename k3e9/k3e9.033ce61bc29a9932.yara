
rule k3e9_033ce61bc29a9932
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k3e9.033ce61bc29a9932"
     cluster="k3e9.033ce61bc29a9932"
     cluster_size="5"
     filetype = "application/x-dosexec"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171117"
     license = "RIL-1.0 [Rick's Internet License] "
     family="berbew genpack qukart"
     md5_hashes="['08d49ef736569ec55ffc777780cdcdab','467e12e87e22011a59aa96b751358b2a','b997e71cf82e5a8b5d9db3e5e1023240']"

   strings:
      $hex_string = { cd015365745365637572697479496e666f000000d401536574456e7472696573496e41636c41000018005f5f4765744d61696e417267730081015f736c656570 }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
