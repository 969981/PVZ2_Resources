.class public Lgbsdk/common/host/abkh;
.super Ljava/lang/Object;
.source "TTNetDetectInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abkh$ab;,
        Lgbsdk/common/host/abkh$ae;,
        Lgbsdk/common/host/abkh$ah;,
        Lgbsdk/common/host/abkh$ag;,
        Lgbsdk/common/host/abkh$af;,
        Lgbsdk/common/host/abkh$ac;,
        Lgbsdk/common/host/abkh$ad;
    }
.end annotation


# instance fields
.field public appVersion:Ljava/lang/String;

.field public jT:I

.field public jU:J

.field public jV:I

.field public jW:I

.field public jX:I

.field public jY:Ljava/lang/String;

.field public jZ:I

.field public ka:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgbsdk/common/host/abkh$ad;",
            ">;"
        }
    .end annotation
.end field

.field public kb:Ljava/lang/String;

.field public kc:Ljava/lang/String;

.field public kd:Ljava/lang/String;

.field public ke:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgbsdk/common/host/abkh;->ka:Ljava/util/List;

    return-void
.end method
