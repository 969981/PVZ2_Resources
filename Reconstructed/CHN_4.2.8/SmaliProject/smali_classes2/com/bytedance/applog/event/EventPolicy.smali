.class public final enum Lcom/bytedance/applog/event/EventPolicy;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/applog/event/EventPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/bytedance/applog/event/EventPolicy;

.field public static final enum ACCEPT:Lcom/bytedance/applog/event/EventPolicy;

.field public static final enum DENY:Lcom/bytedance/applog/event/EventPolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/bytedance/applog/event/EventPolicy;

    const-string v1, "ACCEPT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/applog/event/EventPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/applog/event/EventPolicy;->ACCEPT:Lcom/bytedance/applog/event/EventPolicy;

    new-instance v0, Lcom/bytedance/applog/event/EventPolicy;

    const-string v1, "DENY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bytedance/applog/event/EventPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/applog/event/EventPolicy;->DENY:Lcom/bytedance/applog/event/EventPolicy;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/bytedance/applog/event/EventPolicy;

    sget-object v4, Lcom/bytedance/applog/event/EventPolicy;->ACCEPT:Lcom/bytedance/applog/event/EventPolicy;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/bytedance/applog/event/EventPolicy;->$VALUES:[Lcom/bytedance/applog/event/EventPolicy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/applog/event/EventPolicy;
    .locals 1

    const-class v0, Lcom/bytedance/applog/event/EventPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/applog/event/EventPolicy;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/applog/event/EventPolicy;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/event/EventPolicy;->$VALUES:[Lcom/bytedance/applog/event/EventPolicy;

    invoke-virtual {v0}, [Lcom/bytedance/applog/event/EventPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/applog/event/EventPolicy;

    return-object v0
.end method
