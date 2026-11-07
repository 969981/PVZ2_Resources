.class public Lgbsdk/common/host/abpx;
.super Ljava/lang/Object;
.source "ServiceMonitorData.java"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Lorg/json/JSONObject;

.field public d:Lorg/json/JSONObject;

.field public e:Lorg/json/JSONObject;

.field f:Lorg/json/JSONObject;

.field g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;J)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lgbsdk/common/host/abpx;->a:Ljava/lang/String;

    .line 21
    iput p2, p0, Lgbsdk/common/host/abpx;->b:I

    .line 22
    iput-object p3, p0, Lgbsdk/common/host/abpx;->c:Lorg/json/JSONObject;

    .line 23
    iput-object p4, p0, Lgbsdk/common/host/abpx;->d:Lorg/json/JSONObject;

    .line 24
    iput-object p5, p0, Lgbsdk/common/host/abpx;->e:Lorg/json/JSONObject;

    .line 25
    iput-object p6, p0, Lgbsdk/common/host/abpx;->f:Lorg/json/JSONObject;

    .line 26
    iput-wide p7, p0, Lgbsdk/common/host/abpx;->g:J

    return-void
.end method
