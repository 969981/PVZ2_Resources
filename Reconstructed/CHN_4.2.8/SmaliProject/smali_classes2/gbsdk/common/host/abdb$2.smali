.class public Lgbsdk/common/host/abdb$2;
.super Ljava/lang/Object;

# interfaces
.implements Lgbsdk/common/host/abfk$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abdb;->a(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic dh:Lgbsdk/common/host/abdb;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abdb;J)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abdb$2;->dh:Lgbsdk/common/host/abdb;

    iput-wide p2, p0, Lgbsdk/common/host/abdb$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 8

    invoke-static {}, Lgbsdk/common/host/abfa;->au()Lgbsdk/common/host/abfa;

    move-result-object v0

    iget-wide v2, p0, Lgbsdk/common/host/abdb$2;->a:J

    iget-object v1, p0, Lgbsdk/common/host/abdb$2;->dh:Lgbsdk/common/host/abdb;

    invoke-static {v1}, Lgbsdk/common/host/abdb;->a(Lgbsdk/common/host/abdb;)Z

    move-result v4

    invoke-static {}, Lgbsdk/common/host/abge;->e()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lgbsdk/common/host/abfa;->a(Lorg/json/JSONObject;JZLjava/lang/String;ZLjava/lang/String;)Z

    return-void
.end method
