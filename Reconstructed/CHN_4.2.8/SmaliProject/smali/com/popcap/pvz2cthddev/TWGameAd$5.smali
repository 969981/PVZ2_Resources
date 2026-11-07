.class Lcom/popcap/pvz2cthddev/TWGameAd$5;
.super Ljava/lang/Object;
.source "TWGameAd.java"

# interfaces
.implements Lcom/talkweb/twgame/callback/NativeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz2cthddev/TWGameAd;->LoadBanner(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/popcap/pvz2cthddev/TWGameAd;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$5;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    iput p2, p0, Lcom/popcap/pvz2cthddev/TWGameAd$5;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resultData(Ljava/lang/String;)V
    .locals 2

    .line 320
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/talkweb/twgame/bean/NativeData;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twgame/bean/NativeData;

    .line 321
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd$5;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    invoke-static {v0}, Lcom/popcap/pvz2cthddev/TWGameAd;->access$000(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$5;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {p1}, Lcom/talkweb/twgame/bean/NativeData;->getCode()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/talkweb/twgame/Param/GameConstant;->NATIVEDATA_CODE_TRUE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "TwGameAd"

    if-eqz p1, :cond_0

    .line 323
    const-string p1, "Load Banner success"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$5;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    const/4 v0, 0x1

    iget v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$5;->val$id:I

    invoke-virtual {p1, v0, v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->Native_BannerLoad(ZI)V

    goto :goto_0

    .line 326
    :cond_0
    const-string p1, "Load Banner failure"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$5;->this$0:Lcom/popcap/pvz2cthddev/TWGameAd;

    const/4 v0, 0x0

    iget v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd$5;->val$id:I

    invoke-virtual {p1, v0, v1}, Lcom/popcap/pvz2cthddev/TWGameAd;->Native_BannerLoad(ZI)V

    :goto_0
    return-void
.end method
