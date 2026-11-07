.class public final Lgbsdk/common/host/abzq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgbsdk/common/host/abvl$ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abzq;->a(Ljava/lang/String;Lcom/volcengine/zeus/plugin/Plugin;Ljava/lang/StringBuilder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aMN:[Landroid/content/pm/PackageInfo;

.field final synthetic aMO:Lcom/volcengine/zeus/plugin/Plugin;

.field final synthetic aMP:Ljava/lang/StringBuilder;

.field final synthetic aMQ:Ljava/io/File;

.field final synthetic aMR:Lgbsdk/common/host/abzq;

.field final synthetic b:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abzq;[Landroid/content/pm/PackageInfo;Ljava/lang/String;Lcom/volcengine/zeus/plugin/Plugin;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lgbsdk/common/host/abzq$2;->aMR:Lgbsdk/common/host/abzq;

    iput-object p2, p0, Lgbsdk/common/host/abzq$2;->aMN:[Landroid/content/pm/PackageInfo;

    iput-object p3, p0, Lgbsdk/common/host/abzq$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lgbsdk/common/host/abzq$2;->aMO:Lcom/volcengine/zeus/plugin/Plugin;

    iput-object p5, p0, Lgbsdk/common/host/abzq$2;->aMP:Ljava/lang/StringBuilder;

    iput-object p6, p0, Lgbsdk/common/host/abzq$2;->e:Ljava/lang/String;

    iput-object p7, p0, Lgbsdk/common/host/abzq$2;->aMQ:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 154
    iget-object v0, p0, Lgbsdk/common/host/abzq$2;->aMN:[Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lgbsdk/common/host/abzq$2;->aMR:Lgbsdk/common/host/abzq;

    iget-object v2, p0, Lgbsdk/common/host/abzq$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lgbsdk/common/host/abzq$2;->aMO:Lcom/volcengine/zeus/plugin/Plugin;

    iget-object v4, p0, Lgbsdk/common/host/abzq$2;->aMP:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lgbsdk/common/host/abzq$2;->e:Ljava/lang/String;

    iget-object v6, p0, Lgbsdk/common/host/abzq$2;->aMQ:Ljava/io/File;

    invoke-static/range {v1 .. v6}, Lgbsdk/common/host/abzq;->a(Lgbsdk/common/host/abzq;Ljava/lang/String;Lcom/volcengine/zeus/plugin/Plugin;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method
