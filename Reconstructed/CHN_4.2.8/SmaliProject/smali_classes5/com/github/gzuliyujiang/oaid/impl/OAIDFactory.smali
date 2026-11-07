.class public final Lcom/github/gzuliyujiang/oaid/impl/OAIDFactory;
.super Ljava/lang/Object;
.source "OAIDFactory.java"


# static fields
.field private static ioaid:Lcom/github/gzuliyujiang/oaid/IOAID;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/github/gzuliyujiang/oaid/IOAID;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 35
    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 39
    :cond_0
    sget-object v0, Lcom/github/gzuliyujiang/oaid/impl/OAIDFactory;->ioaid:Lcom/github/gzuliyujiang/oaid/IOAID;

    if-eqz v0, :cond_1

    return-object v0

    .line 43
    :cond_1
    invoke-static {p0}, Lcom/github/gzuliyujiang/oaid/impl/OAIDFactory;->createManufacturerImpl(Landroid/content/Context;)Lcom/github/gzuliyujiang/oaid/IOAID;

    move-result-object v0

    sput-object v0, Lcom/github/gzuliyujiang/oaid/impl/OAIDFactory;->ioaid:Lcom/github/gzuliyujiang/oaid/IOAID;

    if-eqz v0, :cond_2

    .line 44
    invoke-interface {v0}, Lcom/github/gzuliyujiang/oaid/IOAID;->supported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Manufacturer interface has been found: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/github/gzuliyujiang/oaid/impl/OAIDFactory;->ioaid:Lcom/github/gzuliyujiang/oaid/IOAID;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/github/gzuliyujiang/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    .line 46
    sget-object p0, Lcom/github/gzuliyujiang/oaid/impl/OAIDFactory;->ioaid:Lcom/github/gzuliyujiang/oaid/IOAID;

    return-object p0

    .line 49
    :cond_2
    invoke-static {p0}, Lcom/github/gzuliyujiang/oaid/impl/OAIDFactory;->createUniversalImpl(Landroid/content/Context;)Lcom/github/gzuliyujiang/oaid/IOAID;

    move-result-object p0

    sput-object p0, Lcom/github/gzuliyujiang/oaid/impl/OAIDFactory;->ioaid:Lcom/github/gzuliyujiang/oaid/IOAID;

    return-object p0
.end method

.method private static createManufacturerImpl(Landroid/content/Context;)Lcom/github/gzuliyujiang/oaid/IOAID;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isLenovo()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isMotolora()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 57
    :cond_0
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isMeizu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/MeizuImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/MeizuImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 60
    :cond_1
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isNubia()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/NubiaImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/NubiaImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 63
    :cond_2
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isXiaomi()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isMiui()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isBlackShark()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    .line 66
    :cond_3
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isSamsung()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/SamsungImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/SamsungImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 69
    :cond_4
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isVivo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/VivoImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/VivoImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 72
    :cond_5
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isASUS()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/AsusImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/AsusImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 75
    :cond_6
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isHuawei()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isEmui()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 78
    :cond_7
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isOppo()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isOnePlus()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 87
    :cond_8
    invoke-static {p0}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isCoolpad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 88
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/CoolpadImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/CoolpadImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 90
    :cond_9
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isCoosea()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 91
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/CooseaImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/CooseaImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 93
    :cond_a
    invoke-static {}, Lcom/github/gzuliyujiang/oaid/OAIDRom;->isFreeme()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 94
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/FreemeImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/FreemeImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_b
    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_c
    :goto_0
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/OppoImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/OppoImpl;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v0}, Lcom/github/gzuliyujiang/oaid/impl/OppoImpl;->supported()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    .line 84
    :cond_d
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/OppoExtImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/OppoExtImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 76
    :cond_e
    :goto_1
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/HuaweiImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/HuaweiImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 64
    :cond_f
    :goto_2
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/XiaomiImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/XiaomiImpl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 55
    :cond_10
    :goto_3
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/LenovoImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/LenovoImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static createUniversalImpl(Landroid/content/Context;)Lcom/github/gzuliyujiang/oaid/IOAID;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/MsaImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/MsaImpl;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-interface {v0}, Lcom/github/gzuliyujiang/oaid/IOAID;->supported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile Security Alliance has been found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/github/gzuliyujiang/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Lcom/github/gzuliyujiang/oaid/impl/GmsImpl;

    invoke-direct {v0, p0}, Lcom/github/gzuliyujiang/oaid/impl/GmsImpl;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-interface {v0}, Lcom/github/gzuliyujiang/oaid/IOAID;->supported()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google Play Service has been found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/github/gzuliyujiang/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    return-object v0

    .line 113
    :cond_1
    new-instance p0, Lcom/github/gzuliyujiang/oaid/impl/DefaultImpl;

    invoke-direct {p0}, Lcom/github/gzuliyujiang/oaid/impl/DefaultImpl;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAID/AAID was not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/gzuliyujiang/oaid/OAIDLog;->print(Ljava/lang/Object;)V

    return-object p0
.end method
