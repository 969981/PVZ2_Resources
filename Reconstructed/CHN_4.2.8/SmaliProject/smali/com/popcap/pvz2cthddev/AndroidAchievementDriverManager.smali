.class public Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;
.super Ljava/lang/Object;
.source "AndroidAchievementDriverManager.java"


# static fields
.field public static final Query_Failed:I = 0x1

.field public static final Query_Success:I = 0x0

.field public static final Submit_Failed:I = 0x1

.field public static final Submit_Success:I

.field private static sMgr:Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;


# instance fields
.field public mNativeDriverPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sput-object p0, Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;->sMgr:Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;

    .line 60
    iput-wide p1, p0, Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;->mNativeDriverPtr:J

    return-void
.end method

.method public static instance()Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;
    .locals 1

    .line 65
    sget-object v0, Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;->sMgr:Lcom/popcap/pvz2cthddev/AndroidAchievementDriverManager;

    return-object v0
.end method


# virtual methods
.method public DoQueryAllAchievement()V
    .locals 0

    return-void
.end method

.method public DoSetAchievement(Ljava/lang/String;ID)V
    .locals 0

    return-void
.end method

.method public Initialize()V
    .locals 0

    return-void
.end method

.method public native Native_QueryAllAchievementCallback(I)V
.end method

.method public native Native_SetAchievementCallback(I)V
.end method

.method public OnSetAchievementCallback(Z)V
    .locals 0

    return-void
.end method
