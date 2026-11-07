.class public final enum Lcn/sharesdk/framework/utils/d$a;
.super Ljava/lang/Enum;
.source "Oauth1Signer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/utils/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/framework/utils/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/utils/d$a;

.field public static final enum b:Lcn/sharesdk/framework/utils/d$a;

.field private static final synthetic c:[Lcn/sharesdk/framework/utils/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 197
    new-instance v0, Lcn/sharesdk/framework/utils/d$a;

    const-string v1, "HMAC_SHA1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/utils/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/d$a;->a:Lcn/sharesdk/framework/utils/d$a;

    new-instance v1, Lcn/sharesdk/framework/utils/d$a;

    const-string v2, "PLAINTEXT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/sharesdk/framework/utils/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/sharesdk/framework/utils/d$a;->b:Lcn/sharesdk/framework/utils/d$a;

    .line 196
    filled-new-array {v0, v1}, [Lcn/sharesdk/framework/utils/d$a;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/framework/utils/d$a;->c:[Lcn/sharesdk/framework/utils/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/utils/d$a;
    .locals 1

    .line 196
    const-class v0, Lcn/sharesdk/framework/utils/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/framework/utils/d$a;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/framework/utils/d$a;
    .locals 1

    .line 196
    sget-object v0, Lcn/sharesdk/framework/utils/d$a;->c:[Lcn/sharesdk/framework/utils/d$a;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/utils/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/utils/d$a;

    return-object v0
.end method
