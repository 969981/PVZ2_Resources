.class Lcom/popcap/pvz2cthddev/AndroidShareDriverManager$1;
.super Ljava/lang/Object;
.source "AndroidShareDriverManager.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->DoShare(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 1

    .line 280
    const-string p2, "ShareSDK"

    const-string v0, "ShareCancel!!"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;

    const/4 v0, 0x2

    invoke-virtual {p2, p1}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->GetPlatformString(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->Native_ShareCallback(ILjava/lang/String;)V

    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 288
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ShareComplete: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ShareSDK"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;

    const/4 p3, 0x0

    invoke-virtual {p2, p1}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->GetPlatformString(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->Native_ShareCallback(ILjava/lang/String;)V

    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1

    .line 273
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ShareError: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ShareSDK"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object p2, p0, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager$1;->this$0:Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;

    const/4 p3, 0x1

    invoke-virtual {p2, p1}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->GetPlatformString(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/popcap/pvz2cthddev/AndroidShareDriverManager;->Native_ShareCallback(ILjava/lang/String;)V

    return-void
.end method
