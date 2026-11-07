.class public Lgbsdk/common/host/abef$4;
.super Ljava/lang/Object;

# interfaces
.implements Lgbsdk/common/host/abfk$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abef;->b(Lgbsdk/common/host/abef$ac;ZLcom/apm/insight/runtime/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic eV:Lgbsdk/common/host/abef$ac;

.field final synthetic eW:Lcom/apm/insight/nativecrash/b;

.field final synthetic eX:Lgbsdk/common/host/abef;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abef;Ljava/io/File;Lgbsdk/common/host/abef$ac;Lcom/apm/insight/nativecrash/b;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/common/host/abef$4;->eX:Lgbsdk/common/host/abef;

    iput-object p2, p0, Lgbsdk/common/host/abef$4;->a:Ljava/io/File;

    iput-object p3, p0, Lgbsdk/common/host/abef$4;->eV:Lgbsdk/common/host/abef$ac;

    iput-object p4, p0, Lgbsdk/common/host/abef$4;->eW:Lcom/apm/insight/nativecrash/b;

    iput-object p5, p0, Lgbsdk/common/host/abef$4;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 4

    invoke-static {}, Lgbsdk/common/host/abfa;->au()Lgbsdk/common/host/abfa;

    move-result-object v0

    iget-object v1, p0, Lgbsdk/common/host/abef$4;->a:Ljava/io/File;

    iget-object v2, p0, Lgbsdk/common/host/abef$4;->eX:Lgbsdk/common/host/abef;

    invoke-static {v2}, Lgbsdk/common/host/abef;->c(Lgbsdk/common/host/abef;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lgbsdk/common/host/abef$4;->eV:Lgbsdk/common/host/abef$ac;

    iget-object v3, v3, Lgbsdk/common/host/abef$ac;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lgbsdk/common/host/abif;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lgbsdk/common/host/abfa;->a(Lorg/json/JSONObject;Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lgbsdk/common/host/abef$4;->eW:Lcom/apm/insight/nativecrash/b;

    invoke-virtual {p1}, Lcom/apm/insight/nativecrash/b;->k()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lgbsdk/common/host/abef$4;->eW:Lcom/apm/insight/nativecrash/b;

    invoke-virtual {p1}, Lcom/apm/insight/nativecrash/b;->h()V

    :cond_0
    sget-object p1, Lgbsdk/common/host/abge;->a:Landroid/content/Context;

    iget-object v0, p0, Lgbsdk/common/host/abef$4;->eV:Lgbsdk/common/host/abef$ac;

    iget-object v0, v0, Lgbsdk/common/host/abef$ac;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lgbsdk/common/host/abif;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/common/host/abef$4;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/apm/insight/runtime/h;->a(Ljava/io/File;Ljava/lang/String;)V

    sget-object p1, Lcom/apm/insight/CrashType;->NATIVE:Lcom/apm/insight/CrashType;

    iget-object v0, p0, Lgbsdk/common/host/abef$4;->d:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lgbsdk/common/host/abfb;->a(Lcom/apm/insight/CrashType;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lgbsdk/common/host/abef$4;->eV:Lgbsdk/common/host/abef$ac;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lgbsdk/common/host/abef$ac;->h:Z

    :cond_1
    return-void
.end method
