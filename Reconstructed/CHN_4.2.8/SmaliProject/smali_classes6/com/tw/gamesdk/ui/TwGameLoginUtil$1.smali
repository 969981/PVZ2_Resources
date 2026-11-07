.class final Lcom/tw/gamesdk/ui/TwGameLoginUtil$1;
.super Ljava/util/HashMap;
.source "TwGameLoginUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/gamesdk/ui/TwGameLoginUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0xd0

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u5b98\u7f51"

    invoke-virtual {p0, v0, v1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xfa

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "taptap"

    invoke-virtual {p0, v0, v1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x105

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u597d\u6e38\u5feb\u7206"

    invoke-virtual {p0, v0, v1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xd7

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u52aa\u6bd4\u4e9a"

    invoke-virtual {p0, v0, v1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x88

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "2345"

    invoke-virtual {p0, v0, v1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x118

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u5b9d\u5f00\u5468\u8fb9\u5305"

    invoke-virtual {p0, v0, v1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x107

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u609f\u996d"

    invoke-virtual {p0, v0, v1}, Lcom/tw/gamesdk/ui/TwGameLoginUtil$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
