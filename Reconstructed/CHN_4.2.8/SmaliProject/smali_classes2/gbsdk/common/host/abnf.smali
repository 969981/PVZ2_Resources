.class public Lgbsdk/common/host/abnf;
.super Ljava/lang/Object;
.source "CommonLogData.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/json/JSONObject;

.field c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lgbsdk/common/host/abnf;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lgbsdk/common/host/abnf;->b:Lorg/json/JSONObject;

    .line 19
    iput-wide p3, p0, Lgbsdk/common/host/abnf;->c:J

    return-void
.end method
