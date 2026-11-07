.class public Lgbsdk/common/host/abef$ac;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/abef$ab;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/abef$ab;",
            ">;"
        }
    .end annotation
.end field

.field cR:Z

.field eY:Lgbsdk/common/host/abef$ab;

.field eZ:Lgbsdk/common/host/abef$ab;

.field g:I

.field h:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abef$ac;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abef$ac;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgbsdk/common/host/abef$ac;->cR:Z

    iput v0, p0, Lgbsdk/common/host/abef$ac;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgbsdk/common/host/abef$ac;->h:Z

    iput-object p1, p0, Lgbsdk/common/host/abef$ac;->a:Ljava/lang/String;

    return-void
.end method
