.class public Lgbsdk/common/host/abnl;
.super Ljava/lang/Object;
.source "ApiData.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public vj:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lgbsdk/common/host/abnl;->a:Ljava/lang/String;

    .line 18
    iput-wide p2, p0, Lgbsdk/common/host/abnl;->b:J

    .line 19
    iput-wide p4, p0, Lgbsdk/common/host/abnl;->c:J

    .line 20
    iput-object p6, p0, Lgbsdk/common/host/abnl;->d:Ljava/lang/String;

    .line 21
    iput-object p7, p0, Lgbsdk/common/host/abnl;->e:Ljava/lang/String;

    .line 22
    iput-object p8, p0, Lgbsdk/common/host/abnl;->f:Ljava/lang/String;

    .line 23
    iput p9, p0, Lgbsdk/common/host/abnl;->g:I

    .line 24
    iput-object p10, p0, Lgbsdk/common/host/abnl;->vj:Lorg/json/JSONObject;

    return-void
.end method
