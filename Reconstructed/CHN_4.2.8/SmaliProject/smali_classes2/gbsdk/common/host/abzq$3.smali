.class public final Lgbsdk/common/host/abzq$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abzq;->a(Ljava/lang/String;Lcom/volcengine/zeus/plugin/Plugin;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;)Landroid/content/pm/PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aMG:Lcom/volcengine/zeus/plugin/Plugin;

.field final synthetic aMS:Lgbsdk/common/host/abzq;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abzq;Lcom/volcengine/zeus/plugin/Plugin;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lgbsdk/common/host/abzq$3;->aMS:Lgbsdk/common/host/abzq;

    iput-object p2, p0, Lgbsdk/common/host/abzq$3;->aMG:Lcom/volcengine/zeus/plugin/Plugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lgbsdk/common/host/abzq$3;->aMG:Lcom/volcengine/zeus/plugin/Plugin;

    iget-object v0, v0, Lcom/volcengine/zeus/plugin/Plugin;->mResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method
