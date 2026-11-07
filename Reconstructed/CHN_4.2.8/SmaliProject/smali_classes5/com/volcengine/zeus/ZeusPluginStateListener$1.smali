.class public final Lcom/volcengine/zeus/ZeusPluginStateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/volcengine/zeus/ZeusPluginStateListener;->postStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic aLd:[Ljava/lang/Object;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/volcengine/zeus/ZeusPluginStateListener$1;->a:Ljava/lang/String;

    iput p2, p0, Lcom/volcengine/zeus/ZeusPluginStateListener$1;->b:I

    iput-object p3, p0, Lcom/volcengine/zeus/ZeusPluginStateListener$1;->aLd:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 57
    invoke-static {}, Lgbsdk/common/host/abzv;->hQ()Lgbsdk/common/host/abzv;

    move-result-object v0

    .line 1171
    iget-object v0, v0, Lgbsdk/common/host/abzv;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/volcengine/zeus/ZeusPluginStateListener;

    .line 60
    iget-object v2, p0, Lcom/volcengine/zeus/ZeusPluginStateListener$1;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "UNKNOWN"

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/volcengine/zeus/ZeusPluginStateListener$1;->a:Ljava/lang/String;

    :goto_1
    iget v3, p0, Lcom/volcengine/zeus/ZeusPluginStateListener$1;->b:I

    iget-object v4, p0, Lcom/volcengine/zeus/ZeusPluginStateListener$1;->aLd:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/volcengine/zeus/ZeusPluginStateListener;->onPluginStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
