.class public Lgbsdk/common/host/abpp;
.super Ljava/lang/Object;
.source "Decryptor.java"


# static fields
.field private static KEYS:[I = null

.field private static final KEYS_LENGTH:I = 0x8

.field private static final START_KEY:I = 0x89


# instance fields
.field private mKeysIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 11
    sput-object v0, Lgbsdk/common/host/abpp;->KEYS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lgbsdk/common/host/abpp;->mKeysIndex:I

    .line 17
    invoke-direct {p0}, Lgbsdk/common/host/abpp;->initKeys()V

    return-void
.end method

.method private initKeys()V
    .locals 4

    const/16 v0, 0x89

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 23
    sget-object v2, Lgbsdk/common/host/abpp;->KEYS:[I

    add-int/lit8 v3, v0, 0x1

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public decrypt([BI)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 29
    aget-byte v1, p1, v0

    sget-object v2, Lgbsdk/common/host/abpp;->KEYS:[I

    iget v3, p0, Lgbsdk/common/host/abpp;->mKeysIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgbsdk/common/host/abpp;->mKeysIndex:I

    rem-int/lit8 v3, v3, 0x8

    aget v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
