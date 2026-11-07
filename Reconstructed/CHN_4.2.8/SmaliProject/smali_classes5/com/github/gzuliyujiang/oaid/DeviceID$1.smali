.class final Lcom/github/gzuliyujiang/oaid/DeviceID$1;
.super Ljava/lang/Object;
.source "DeviceID.java"

# interfaces
.implements Lcom/github/gzuliyujiang/oaid/IGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/gzuliyujiang/oaid/DeviceID;->register(Landroid/app/Application;Lcom/github/gzuliyujiang/oaid/IRegisterCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/github/gzuliyujiang/oaid/IRegisterCallback;

.field final synthetic val$instance:Lcom/github/gzuliyujiang/oaid/DeviceID;


# direct methods
.method constructor <init>(Lcom/github/gzuliyujiang/oaid/DeviceID;Lcom/github/gzuliyujiang/oaid/IRegisterCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$callback",
            "val$instance"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/github/gzuliyujiang/oaid/DeviceID$1;->val$instance:Lcom/github/gzuliyujiang/oaid/DeviceID;

    iput-object p2, p0, Lcom/github/gzuliyujiang/oaid/DeviceID$1;->val$callback:Lcom/github/gzuliyujiang/oaid/IRegisterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOAIDGetComplete(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/github/gzuliyujiang/oaid/DeviceID$1;->val$instance:Lcom/github/gzuliyujiang/oaid/DeviceID;

    invoke-virtual {v0, p1}, Lcom/github/gzuliyujiang/oaid/DeviceID;->onOAIDGetComplete(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/github/gzuliyujiang/oaid/DeviceID$1;->val$callback:Lcom/github/gzuliyujiang/oaid/IRegisterCallback;

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1}, Lcom/github/gzuliyujiang/oaid/IRegisterCallback;->onComplete()V

    :cond_0
    return-void
.end method

.method public onOAIDGetError(Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/github/gzuliyujiang/oaid/DeviceID$1;->val$instance:Lcom/github/gzuliyujiang/oaid/DeviceID;

    invoke-virtual {v0, p1}, Lcom/github/gzuliyujiang/oaid/DeviceID;->onOAIDGetError(Ljava/lang/Exception;)V

    .line 97
    iget-object p1, p0, Lcom/github/gzuliyujiang/oaid/DeviceID$1;->val$callback:Lcom/github/gzuliyujiang/oaid/IRegisterCallback;

    if-eqz p1, :cond_0

    .line 98
    invoke-interface {p1}, Lcom/github/gzuliyujiang/oaid/IRegisterCallback;->onComplete()V

    :cond_0
    return-void
.end method
