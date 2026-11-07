.class public final Lgbsdk/common/host/abzq$1;
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
.field final synthetic aMG:Lcom/volcengine/zeus/plugin/Plugin;

.field final synthetic aML:Ljava/lang/StringBuilder;

.field final synthetic aMM:Lgbsdk/common/host/abzq;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Ljava/io/File;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abzq;Lcom/volcengine/zeus/plugin/Plugin;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lgbsdk/common/host/abzq$1;->aMM:Lgbsdk/common/host/abzq;

    iput-object p2, p0, Lgbsdk/common/host/abzq$1;->aMG:Lcom/volcengine/zeus/plugin/Plugin;

    iput-object p3, p0, Lgbsdk/common/host/abzq$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lgbsdk/common/host/abzq$1;->c:Ljava/io/File;

    iput-object p5, p0, Lgbsdk/common/host/abzq$1;->d:Ljava/io/File;

    iput-object p6, p0, Lgbsdk/common/host/abzq$1;->aML:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 148
    iget-object v0, p0, Lgbsdk/common/host/abzq$1;->aMM:Lgbsdk/common/host/abzq;

    iget-object v1, p0, Lgbsdk/common/host/abzq$1;->aMG:Lcom/volcengine/zeus/plugin/Plugin;

    iget-object v2, p0, Lgbsdk/common/host/abzq$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lgbsdk/common/host/abzq$1;->c:Ljava/io/File;

    iget-object v4, p0, Lgbsdk/common/host/abzq$1;->d:Ljava/io/File;

    iget-object v5, p0, Lgbsdk/common/host/abzq$1;->aML:Ljava/lang/StringBuilder;

    invoke-static/range {v0 .. v5}, Lgbsdk/common/host/abzq;->a(Lgbsdk/common/host/abzq;Lcom/volcengine/zeus/plugin/Plugin;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/StringBuilder;)V

    return-void
.end method
