.class public Lcom/talkweb/sdk/util/Des;
.super Ljava/lang/Object;
.source "Des.java"


# static fields
.field private static final algorithm:Ljava/lang/String; = "DES/CBC/PKCS5Padding"

.field private static final baseAlgorithm:Ljava/lang/String; = "DES"

.field private static final desKey:Ljava/lang/String; = "TwPay001"

.field private static final encoding:Ljava/lang/String; = "utf-8"

.field private static final iv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 19
    fill-array-data v0, :array_0

    sput-object v0, Lcom/talkweb/sdk/util/Des;->iv:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static StringToBytes(Ljava/lang/String;)[B
    .locals 11

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 86
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_0

    return-object v0

    :cond_0
    mul-int/lit8 v3, v2, 0x2

    .line 87
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, 0x1

    .line 88
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x66

    const/16 v6, 0x46

    const/16 v7, 0x39

    const/16 v8, 0x61

    const/16 v9, 0x41

    const/16 v10, 0x30

    if-lt v4, v10, :cond_1

    if-gt v4, v7, :cond_1

    add-int/lit8 v4, v4, -0x30

    :goto_1
    int-to-short v4, v4

    goto :goto_3

    :cond_1
    if-lt v4, v9, :cond_2

    if-gt v4, v6, :cond_2

    add-int/lit8 v4, v4, -0x41

    :goto_2
    add-int/lit8 v4, v4, 0xa

    goto :goto_1

    :cond_2
    if-lt v4, v8, :cond_3

    if-gt v4, v5, :cond_3

    add-int/lit8 v4, v4, -0x61

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_3
    shl-int/lit8 v4, v4, 0x4

    int-to-short v4, v4

    if-lt v3, v10, :cond_4

    if-gt v3, v7, :cond_4

    add-int/lit8 v3, v3, -0x30

    :goto_4
    int-to-short v3, v3

    or-int/2addr v3, v4

    int-to-short v3, v3

    goto :goto_6

    :cond_4
    if-lt v3, v9, :cond_5

    if-gt v3, v6, :cond_5

    add-int/lit8 v3, v3, -0x41

    :goto_5
    add-int/lit8 v3, v3, 0xa

    goto :goto_4

    :cond_5
    if-lt v3, v8, :cond_6

    if-gt v3, v5, :cond_6

    add-int/lit8 v3, v3, -0x61

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    .line 110
    :goto_6
    invoke-static {v3}, Lcom/talkweb/sdk/util/Des;->shortToByte(S)B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static byteToShort(B)S
    .locals 1

    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_0

    and-int/lit8 p0, p0, 0x7f

    int-to-short p0, p0

    add-int/lit16 p0, p0, 0x80

    :cond_0
    int-to-short p0, p0

    return p0
.end method

.method private static bytesToString([B)Ljava/lang/String;
    .locals 5

    .line 55
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 59
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return-object v0

    .line 60
    :cond_0
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/talkweb/sdk/util/Des;->byteToShort(B)S

    move-result v2

    and-int/lit8 v3, v2, 0xf

    int-to-short v3, v3

    and-int/lit16 v2, v2, 0xf0

    int-to-short v2, v2

    shr-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    const/16 v4, 0x9

    if-ltz v2, :cond_1

    if-gt v2, v4, :cond_1

    add-int/lit8 v2, v2, 0x30

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x41

    add-int/lit8 v2, v2, -0xa

    :goto_1
    int-to-char v2, v2

    if-ltz v3, :cond_2

    if-gt v3, v4, :cond_2

    add-int/lit8 v3, v3, 0x30

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x41

    add-int/lit8 v3, v3, -0xa

    :goto_2
    int-to-char v3, v3

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/talkweb/sdk/util/Des;->StringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 45
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/talkweb/sdk/util/Des;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 46
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "TwPay001"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "DES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "DES/CBC/PKCS5Padding"

    .line 48
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    .line 49
    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 50
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 51
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "utf-8"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 34
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/talkweb/sdk/util/Des;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 35
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "TwPay001"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "DES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "DES/CBC/PKCS5Padding"

    .line 37
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    .line 38
    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 39
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/talkweb/sdk/util/Des;->bytesToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final input2byte(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 151
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 152
    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 168
    :try_start_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "BBFFB6DA9B2D3E75E97CB77D7548BDA43D471CB4F7CD4EC5AC04769F4FFCAAD9DB71750A2887AFAEDD52849224EF69809496CB825D9A1F8CCB2B7B4332140534B52E78A30F68C660BEAA00E0B39067CD632A49A91B5A186A2CBE96318E3DE6903E375798AEE850E7B60E19DB6D75487A6E47860E392B0625D4EDEDA9E81E5C4A598FB131C5DF2C273E66058978F46AD441F6226F71EE38D1F767998A7EED89853C0BC992BD0A657FC03AB358DEF8393BB9086D43C28FB453332153B1D6713AF0A3628FC3CB192A431C9B228605F1782FC0A0EB60330B033F0AD03D5D34C7E001915E438659B57B9E19B3D1DE7DBDC7A1F463584DED1F86570281747A0807816DC8F55CADAACE50F465C2F4A243793E9DA45B06DB8A41AF4DB03988CF7EBF0F99890F7E646F7511C6926B37EF95651EFF884480FBC929307709DF1BE824FE39F9E2072A2326C27BFC63B7BDC01A966418035AFB9A3623AF490CD9E0A5A73A4A630A545BC7A29F0E8B63AC75D4078F9AC01841B5D5D98C5C400D9AEDF4D0705474FD52835FE43A50BE3CC41C1DDD1B2788C4730EAB1F276F436900991073E8D23478DAD62158FEB0BD480507082965BF8CF4864EB238A8CD38A0582CB0A999D37B826A88FA645839E01BD2DD15A9F02E567F59D57CF8E6FED20711770870965268EE94A5627A070E2394147E359AFB0C8DC407B420C72D24BD59A01E44AFE305113D51B7925AA2572978BB8DE73D6691E44CF7930DFCA6588F0EB8BD125D73317D44491D5E270EB5AD43994AAACA54BEB817E24BC2AF1AAADE1A7A6BDCFC6F1BB9DFD66D4FE530332FF87C7A7E0999EAFEFAC4F2FDA491C7CAB02086C5B6352AAF0CE3BCDC1861ECE4E3518C767C7B99AFEB112F02FBCBCDD69845352CA3F94E89F833F020398F59AD305D8C8CD5D17AA834CD35331E34D86734430FED14654C26BF410899767A3B868D4BA224D6F5940A6FC822FB02AD3CD558388A91930EF69D5CC851D7BAB3109D4661C7D126F837E99886847C62B58EB11D8249E0C1CCAAAD16363E5C597F4A789419991F78DD084D8DF1032CD88D8C18B5A0FDEC48BEADA0DE61BE52DC5F46CC70ED3E0598B7FBD933DA0CD4F1A1E0B05D258AF8FA8C196E4AEE533631BF8A63FAFF84E7887D78135494A1E6DDB080BEF1E1165BAC5028CF34D942BE8BD26E9C90A7CE309369D76ACFC4F6B20BD521BBAEF910201B48A17B087604A4F68E510E87F97970145FE495C7A766A425C7CAC1FE12F7A23818592659677FBD11444C201FFBF1E2F42EEA8059483B830D779F1DF8432DC5A701E5A804062935A4A97F2D7646C51BFAFB09714443C3C2A46735FD6F560AD94B4C408E63F28366E7D123FFD343C292C3309DC0212CD18527849AE88CD890F571E71E1F6FF16B7924127F9DF0E881153C50D0C5989E1F4524C5E4D1E4B03294916C834C146BD5E390314C262C04C4EF2CA298A7DD86AA859038310019700B5971AD0A90B8D73BEF1245E07509236F467C4FB42697AFB63E41505842455B7346A4036371EBE2065BD71FE492CE48EC45D82A448E457356B8CE68B15DC9687C74EFAEDA6683558B6BD9B0C54601DF27B801C839D458C003F69171F1B03EA988CDA27DCEF9008F4DC8E38F91160F60C70141885E793B687DFEC5BDF8EA4189EB36693DCFBEB41E9BAAD633AFD6035DCA0296B331AF7530701766B2793E69D087630C33697817EDEA8F39D61FF04E0ED5D3790AD2EE1E656117E4705F88AEAB6D27447CA29F322921435B91B3F7E24C882E5AFB7F21B558BDF242DC32E6650100ACD04A0FC472C4D457358E51D43A950890F9426DADD068F12ECC845F71FA5AD74EC441BEB6A38566862CD5BEEDC14FA9279ACA70664024EF0A0C613DF8F62AE46D32940880FFFFEDE350D50BC0C36BA27CB5CB2DB8F37F5D8783BEED266B143209F612FAC60CD4847EBF2861321732D07EC85317DBAC818C13BF9907D4E033E0DD0D57AFF170E374A7EC3F815255E51153EF0B7C6C43B0D5FC25FC9C775D08022ECD554FFE2F707680B92731174E6F54F644EE420D3C566C1227B7A56BECA6F4EB016968869D97B2F71959464838738793E500FE78196C3343A586E7545C6FF32ED91336C772DCC77AE015FB68A7B842A9B8EE98AD8B72F6FEBC1DE0D067E2959BF292C8B49A2F3123494061E4734E5B7C01B2D047E075302F94AAD1FC55EE9FA7F2CCB5A609EEE03D497E2013A7596CD2294D89EC5C56DF1B188CD2E7E82AE12EFE57361A710D41123CD43914E0689507816BD6CA31BB9BD042687E587EF7E5C69F65488A276C6D1B88EE69FEAFCEC00DE761FB47CD7D1E3DC3EC40C4FD175EBEA2F2C98DDACAAC7727859494899673AF9DF1189C14A594502E563DC789DC8453F4476DAD42773ADE3F096309A4192F2B9200A223EC3EC999C5011374A5FBBE06F2790FAF8F6AC8B9F7C9930CC981EED697434B638A8EAC6EFEFF9F0C88CF4DA08A60042CB6ADBAA5557BACFA3395A9D07ECD84476A39D3C4958A64C2F8EC39EB811A3BEA1BF60F1C561EA0FDA291FCC03B8D847796FDCFC24E56034862CCCD1589B424344B5EB7ED52B696D841EF30DE5FE029C7765617933CB8736540B7571359F82D9F20FBDA77E21FD89EF94FDA6745573878E23DBA3C9D5CD8F7838FA5F16BCFF98E6361515CB8A215513FCB9E772797C5BAF7C11AB5472EF3DD72837984539C36719633C2E872732E6B83051B6009CD37A8526E23994894AABA94DEC06E13F7A39BB3C1B3F9E41FF24466630ED18B8D72DB0C0E31CA0F1519A8B59F3E38C1B2CC0B589D408328B86D397DBB704BF368391E6B133BE04E4C823B3789E346C0DC68D65CB0FCF6B26AFA74FACECFCECE004709C9896261A9C8817C75C0992E65F172182126B7E845997D20E753D5A1B1F37A68B5DB3E514B737838D6F2AD9FDF42A23D1D2132509A9E10F199A04E38F95E4DF26C9374D84E9180291E94944E73FF06CE284289A2BF2F35B5BE9D28C6550E47C6A91A1A65F7AF665BEE5D426A77B61372452768B48E5A2998ACB2364D3A2DD61276A2A62653A51CADD94577ED9C06AD1E007FA876ADE933E72D12BDDC9AE73CC6093B9C56B20322506AE9E7DB0119BFCEFF311B875CE6D3D497E22E866BA9F01DCBE32CB386167B3EA384FACEF2B59A019FAA22F577376A09BF3C4BD73E6721EF5C111C4DDAA1E087FA19FE7163FAE9ABA8EDEC0B49788423F01CA570F69CAE382249B9A86D8AE91CD354FC4B21A03416E5B628CF0745172DBF3322BF2EA165609831DD3111293E25C6E948C55078015BBD6B2A7B8FCDD82DFABFADA4556AE016F92341DF0227F939AB20CFFEBE130CE524451EF7059D3F76233D1999440C1A0158404B7D0226B86C9F7FF2E726ADD97411C8EB1A2A15307B5E072B51804E5C1C21DCA09A6EB3E78041CF83A1365C5A543527F8E3232D82F5D4428F499D1F084F373658F26EB284CE732F1F0E2978EB1549C9C54F730F4820B0766C5E6AC1129B02A178EE2F7FD5AE7CA82A97362F50BF8D3CF08FF167DE01657BCB2F02B18B17193EF8461D3D31EB8B1FC324C9969F7B1F71BB987E7D94AC9DBAEF142D26A6C598066E573AD907565F4FA09E2CACAECDC9CAA46951B93C58F393B08D0EC99E903C8B1A6A861BFD1608C3BA57BB67819A2D81B6733DA4E5A9B65CDDE5254DC85AC23369646AEB4FA64C7B7DC281AFFAA2FCEA590DEFA748B8C8918828D724BEE8B33F5213282EBD838DA67E2875E3C7AF350065A483F10EFCD746F0A21B152EBAACEB3581DD320B8B9B8C5AB13F373FD390077549C5705DE8351A55AF8B8EFBFCC63D16367B2CCC171BC0431FA7B24B618B8E9D9F26B7532B52DFB257E447EE6EC54B4949BB0B2F28F697C90DC26B1F19F7DFCCD88B1A3285568ECDA15217F4A431EDA5DB06A2CBA99922137DD3DF6C2E158F7C22E2EEDE563499EBE7C837B06843931763D6565BBD3FF3195A4B2A01FD5E27DEF6E6E0E3A614DD5FC1EE361716D76165E1FEDD88303533BD21B9A632BBA63E7B322FB656BA1C32C2EA6D50DF131ABDF1998F30082A4972602D026269D1D0A9714097F0115005210A4100C1CBBBC8DCFB9B604B00C2FB879EF863E068681E6237CB0B23FF6B8028E5F6E7E1A11046E09F462E952D7FFCC58D7EE19E9079855B0FF8890E6181FCBAEB2AD1080C32F6FBF8E679214519C5F6E3E49F0B5B126161F96A420E54A71DEAEE05DA096E297E67AE2D578456D6AA6AE66D690D9CA3DF0DF59825C71C5594124EBE3CC291F609E9A2BFDE7C33B9C48A8C40481E27E332DF9FA96B6236F84B042C8A4A042469ADDD12963263C2F0C0E1C450DE1A843C091F2F1F0158AF750CE869FBCD6C6520621F6382389C12118BCC75CBA3BFA6A51C146ED5A9358127DCAAFDA3BDB72E70C2AA5B7A57DB1A0543830D95A032DF9B77DFD87F7713519C4E6A70334C3808EDEA92D39F9FA0AD3F739C9D2608D3906EBE82527FFB3C8FEEB67784B366C32DF1B648B0498A61ECBAAE0778BC9795D9A522C6B38D6551E714304294901B59CDC34B4E83C72ABC6F15CD82D4FFBF3D5A2849326FEA8DF4C0B09347E73B9511A25D6520B0FE106E3EE7B58B87E3120523EFAE40600164DBBE7B06B6EA09BB9137DE27AE68E464FAA359FC2006E26F499BB71E76C4C0F8D6A78D29E21766BA9264367D3BAB10006ECFE311FD0AB08A2481E04DE52E7F0511F0E5CBFB9A1202B13FEFE9AD2BCAF18F96E3B9E50CCB9074316B5AC149BF6CF5AB0CA62D6CA9C872100E84A88EEFADC731E05C83EA61F24D561A971CEE7B8CB5DD3E549BEEA31CC9B4D79874F4E33EB5E5ED0BD6BD9B394A4729437F299838EB7E4726B2ECB1A7CF0CDCBDACF3756D042671D2528680605FA9C16432A666FD4BF90973A1B766A45E2E8BFF826A68FB7A93E390BDA0F90104534E82044BE73E1898D892674F75948F16E85F480F8DFB08E8AC83CEFF9ACADD2C3AFE361991463FC69FBAEE16623C9C06522FC88D16267851EDB4AC5437ADF9F941B12B864E9FC89F045C539B265E3EE6E740B4C48AF6187BE40BE7379D3B333793CD447AC5BD12D7EB58ED6ED581F810ADF5D5E4AE17B35B062A9A9F2827CE778BD28691F2AB0FFD001C640987E9A9153E361D98575856109B685AFE6D05FE428E063A96E55EA3A14162BCF1A24727B849355DBCBD1E9E8B8688F6D96974E01871A6B1FE03A35823572CF072BE10B59C032599296210F4DE82E534186F4A184E6F24E907F69E1612F95703A562E533C99FCAE625DA27413F611EB4C0D5C09708C6E2DF334D9C0C8BAFEE321A9F8FF0EE21C75498A4218E81BC019761D9ABBC6EF1511765756AFE8089A00FCF1CF1E77F24BDAB73612F104A37904FB5290B0A1B532DBA7CA5054E06888D76069491763413"

    invoke-static {v0}, Lcom/talkweb/sdk/util/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static shortToByte(S)B
    .locals 2

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    int-to-byte p0, p0

    return p0

    :cond_0
    const/16 v0, 0x80

    int-to-byte v1, v0

    sub-int/2addr p0, v0

    int-to-byte p0, p0

    or-int/2addr p0, v1

    int-to-byte p0, p0

    return p0
.end method
