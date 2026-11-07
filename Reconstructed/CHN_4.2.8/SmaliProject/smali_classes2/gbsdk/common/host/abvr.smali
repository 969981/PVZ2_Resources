.class public final Lgbsdk/common/host/abvr;
.super Lgbsdk/common/host/abvq;
.source "FileUploadInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public aKR:Lgbsdk/common/host/abuv;

.field public c:Z

.field public cR:Z

.field public d:Z

.field public dW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgbsdk/common/host/abuv;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/abuv;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p3, p5}, Lgbsdk/common/host/abvq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lgbsdk/common/host/abvr;->c:Z

    .line 30
    iput-boolean p1, p0, Lgbsdk/common/host/abvr;->d:Z

    .line 34
    iput-boolean p1, p0, Lgbsdk/common/host/abvr;->e:Z

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lgbsdk/common/host/abvr;->cR:Z

    .line 44
    iput-boolean p1, p0, Lgbsdk/common/host/abvr;->g:Z

    .line 55
    iput-object p2, p0, Lgbsdk/common/host/abvr;->a:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lgbsdk/common/host/abvr;->aKR:Lgbsdk/common/host/abuv;

    return-void
.end method
