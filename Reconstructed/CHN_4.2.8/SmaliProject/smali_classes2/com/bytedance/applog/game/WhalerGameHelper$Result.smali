.class public final enum Lcom/bytedance/applog/game/WhalerGameHelper$Result;
.super Ljava/lang/Enum;
.source "WhalerGameHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/game/WhalerGameHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/applog/game/WhalerGameHelper$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/applog/game/WhalerGameHelper$Result;

.field public static final enum FAIL:Lcom/bytedance/applog/game/WhalerGameHelper$Result;

.field public static final enum SUCCESS:Lcom/bytedance/applog/game/WhalerGameHelper$Result;

.field public static final enum UNCOMPLETED:Lcom/bytedance/applog/game/WhalerGameHelper$Result;


# instance fields
.field public final gameResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 177
    new-instance v0, Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    const-string v1, "UNCOMPLETED"

    const/4 v2, 0x0

    const-string v3, "uncompleted"

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/applog/game/WhalerGameHelper$Result;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/applog/game/WhalerGameHelper$Result;->UNCOMPLETED:Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    .line 178
    new-instance v0, Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    const-string v1, "SUCCESS"

    const/4 v3, 0x1

    const-string v4, "success"

    invoke-direct {v0, v1, v3, v4}, Lcom/bytedance/applog/game/WhalerGameHelper$Result;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/applog/game/WhalerGameHelper$Result;->SUCCESS:Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    .line 179
    new-instance v0, Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    const-string v1, "FAIL"

    const/4 v4, 0x2

    const-string v5, "fail"

    invoke-direct {v0, v1, v4, v5}, Lcom/bytedance/applog/game/WhalerGameHelper$Result;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/applog/game/WhalerGameHelper$Result;->FAIL:Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    .line 175
    sget-object v5, Lcom/bytedance/applog/game/WhalerGameHelper$Result;->UNCOMPLETED:Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    aput-object v5, v1, v2

    sget-object v2, Lcom/bytedance/applog/game/WhalerGameHelper$Result;->SUCCESS:Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/bytedance/applog/game/WhalerGameHelper$Result;->$VALUES:[Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 184
    iput-object p3, p0, Lcom/bytedance/applog/game/WhalerGameHelper$Result;->gameResult:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/applog/game/WhalerGameHelper$Result;
    .locals 1

    .line 175
    const-class v0, Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/applog/game/WhalerGameHelper$Result;
    .locals 1

    .line 175
    sget-object v0, Lcom/bytedance/applog/game/WhalerGameHelper$Result;->$VALUES:[Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    invoke-virtual {v0}, [Lcom/bytedance/applog/game/WhalerGameHelper$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/applog/game/WhalerGameHelper$Result;

    return-object v0
.end method
