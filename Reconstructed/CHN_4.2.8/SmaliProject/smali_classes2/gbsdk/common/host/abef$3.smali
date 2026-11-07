.class public Lgbsdk/common/host/abef$3;
.super Ljava/lang/Object;

# interfaces
.implements Lgbsdk/common/host/abfk$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abef;->a(Lgbsdk/common/host/abef$ac;ZLcom/apm/insight/runtime/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/io/File;

.field final synthetic cM:Lgbsdk/common/host/abfh;

.field final synthetic e:Lorg/json/JSONObject;

.field final synthetic eS:Lgbsdk/common/host/abef$ac;

.field final synthetic eT:Lcom/apm/insight/CrashType;

.field final synthetic eU:Lgbsdk/common/host/abef;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abef;Lgbsdk/common/host/abfh;Ljava/io/File;Lgbsdk/common/host/abef$ac;Lcom/apm/insight/CrashType;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abef$3;->eU:Lgbsdk/common/host/abef;

    iput-object p2, p0, Lgbsdk/common/host/abef$3;->cM:Lgbsdk/common/host/abfh;

    iput-object p3, p0, Lgbsdk/common/host/abef$3;->b:Ljava/io/File;

    iput-object p4, p0, Lgbsdk/common/host/abef$3;->eS:Lgbsdk/common/host/abef$ac;

    iput-object p5, p0, Lgbsdk/common/host/abef$3;->eT:Lcom/apm/insight/CrashType;

    iput-object p6, p0, Lgbsdk/common/host/abef$3;->e:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 5

    iget-object v0, p0, Lgbsdk/common/host/abef$3;->cM:Lgbsdk/common/host/abfh;

    iget-object v0, v0, Lgbsdk/common/host/abfh;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lgbsdk/common/host/abef$3;->b:Ljava/io/File;

    const-string v4, "logZip"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lgbsdk/common/host/abef$3;->eU:Lgbsdk/common/host/abef;

    invoke-static {v2}, Lgbsdk/common/host/abef;->c(Lgbsdk/common/host/abef;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lgbsdk/common/host/abef$3;->eS:Lgbsdk/common/host/abef$ac;

    iget-object v3, v3, Lgbsdk/common/host/abef$ac;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lgbsdk/common/host/abif;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, p1, v1}, Lgbsdk/common/host/abfd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/io/File;)Lgbsdk/common/host/abhs;

    move-result-object p1

    invoke-virtual {p1}, Lgbsdk/common/host/abhs;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lgbsdk/common/host/abef$3;->b:Ljava/io/File;

    invoke-static {p1}, Lgbsdk/common/host/abhg;->d(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lgbsdk/common/host/abfm;->ab()Lgbsdk/common/host/abfm;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/common/host/abef$3;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abfp;->x(Ljava/lang/String;)Lgbsdk/common/host/abfp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgbsdk/common/host/abfm;->a(Lgbsdk/common/host/abfp;)V

    :cond_0
    sget-object p1, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    iget-object v0, p0, Lgbsdk/common/host/abef$3;->eS:Lgbsdk/common/host/abef$ac;

    iget-object v0, v0, Lgbsdk/common/host/abef$ac;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lgbsdk/common/host/abif;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/common/host/abef$3;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/apm/insight/runtime/h;->a(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lgbsdk/common/host/abef$3;->eT:Lcom/apm/insight/CrashType;

    iget-object v0, p0, Lgbsdk/common/host/abef$3;->e:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lgbsdk/common/host/abfb;->a(Lcom/apm/insight/CrashType;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lgbsdk/common/host/abef$3;->eS:Lgbsdk/common/host/abef$ac;

    iput-boolean v3, p1, Lgbsdk/common/host/abef$ac;->h:Z

    :cond_1
    return-void
.end method
