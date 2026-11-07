.class final Lcom/talkweb/twOfflineSdk/tools/BuryingPointUtil$2;
.super Ljava/lang/Object;
.source "BuryingPointUtil.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/HttpTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/tools/BuryingPointUtil;->UserInfoToTga(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseData(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "success"

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u4e0a\u4f20\u690d\u7269\u5927\u6218\u50f5\u5c38\u7528\u6237\u4fe1\u606f2\u5230TGA\u6210\u529f!"

    .line 170
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u4e0a\u4f20\u690d\u7269\u5927\u6218\u50f5\u5c38\u7528\u6237\u4fe1\u606f2\u5230TGA\u5931\u8d25!"

    .line 173
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
