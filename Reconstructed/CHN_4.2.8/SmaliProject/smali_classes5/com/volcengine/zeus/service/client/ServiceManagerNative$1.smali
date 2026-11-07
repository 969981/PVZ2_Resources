.class public final Lcom/volcengine/zeus/service/client/ServiceManagerNative$1;
.super Lgbsdk/common/host/abyx$ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/volcengine/zeus/service/client/ServiceManagerNative;->bindServiceNative(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aNC:Landroid/content/ServiceConnection;

.field final synthetic aND:Lcom/volcengine/zeus/service/client/ServiceManagerNative;


# direct methods
.method constructor <init>(Lcom/volcengine/zeus/service/client/ServiceManagerNative;Landroid/content/ServiceConnection;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/volcengine/zeus/service/client/ServiceManagerNative$1;->aND:Lcom/volcengine/zeus/service/client/ServiceManagerNative;

    iput-object p2, p0, Lcom/volcengine/zeus/service/client/ServiceManagerNative$1;->aNC:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Lgbsdk/common/host/abyx$ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/volcengine/zeus/service/client/ServiceManagerNative$1;->aNC:Landroid/content/ServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/volcengine/zeus/service/client/ServiceManagerNative$1;->aNC:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method
