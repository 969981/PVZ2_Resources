.class public Lgbsdk/common/host/abwr;
.super Ljava/lang/Object;
.source "TNCConfig.java"


# instance fields
.field public aIU:Z

.field public aIV:Z

.field public aIW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public aIX:I

.field public aIY:I

.field public aIZ:I

.field public aJa:I

.field public aJb:I

.field public aJc:I

.field public aJd:I

.field public aJe:I

.field public aJf:Ljava/lang/String;

.field public aJg:I

.field public aJh:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lgbsdk/common/host/abwr;->aIU:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lgbsdk/common/host/abwr;->aIV:Z

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lgbsdk/common/host/abwr;->aIW:Ljava/util/Map;

    const/16 v2, 0xa

    .line 16
    iput v2, p0, Lgbsdk/common/host/abwr;->aIX:I

    const/4 v3, 0x3

    .line 18
    iput v3, p0, Lgbsdk/common/host/abwr;->aIY:I

    .line 20
    iput v3, p0, Lgbsdk/common/host/abwr;->aIZ:I

    .line 22
    iput v2, p0, Lgbsdk/common/host/abwr;->aJa:I

    .line 24
    iput v3, p0, Lgbsdk/common/host/abwr;->aJb:I

    .line 26
    iput v3, p0, Lgbsdk/common/host/abwr;->aJc:I

    const/16 v2, 0x384

    .line 28
    iput v2, p0, Lgbsdk/common/host/abwr;->aJd:I

    const/16 v2, 0x78

    .line 30
    iput v2, p0, Lgbsdk/common/host/abwr;->aJe:I

    .line 32
    iput-object v1, p0, Lgbsdk/common/host/abwr;->aJf:Ljava/lang/String;

    .line 35
    iput v0, p0, Lgbsdk/common/host/abwr;->aJg:I

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lgbsdk/common/host/abwr;->aJh:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " localEnable: "

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lgbsdk/common/host/abwr;->aIU:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " probeEnable: "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lgbsdk/common/host/abwr;->aIV:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hostFilter: "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abwr;->aIW:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reqTo: "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgbsdk/common/host/abwr;->aIX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgbsdk/common/host/abwr;->aIY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgbsdk/common/host/abwr;->aIZ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reqErr: "

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgbsdk/common/host/abwr;->aJa:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lgbsdk/common/host/abwr;->aJb:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgbsdk/common/host/abwr;->aJc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " updateInterval: "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgbsdk/common/host/abwr;->aJd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " updateRandom: "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgbsdk/common/host/abwr;->aJe:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " httpBlack: "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abwr;->aJf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
