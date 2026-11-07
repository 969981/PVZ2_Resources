.class public final enum Lcn/egame/terminal/miniapay/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/egame/terminal/miniapay/c;

.field private static enum b:Lcn/egame/terminal/miniapay/c;

.field private static enum c:Lcn/egame/terminal/miniapay/c;

.field private static enum d:Lcn/egame/terminal/miniapay/c;


# instance fields
.field private e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcn/egame/terminal/miniapay/c;

    sget-object v1, Lcn/egame/terminal/miniapay/EgameMiniApay;->CHINA_TELECOM:[Ljava/lang/String;

    const-string v2, "CHINA_TELECOM"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcn/egame/terminal/miniapay/c;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcn/egame/terminal/miniapay/c;->a:Lcn/egame/terminal/miniapay/c;

    new-instance v0, Lcn/egame/terminal/miniapay/c;

    sget-object v1, Lcn/egame/terminal/miniapay/EgameMiniApay;->CHAIN_MOBILE:[Ljava/lang/String;

    const-string v2, "CHINA_MOBILE"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcn/egame/terminal/miniapay/c;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcn/egame/terminal/miniapay/c;->b:Lcn/egame/terminal/miniapay/c;

    new-instance v0, Lcn/egame/terminal/miniapay/c;

    sget-object v1, Lcn/egame/terminal/miniapay/EgameMiniApay;->CHINA_UNICOM:[Ljava/lang/String;

    const-string v2, "CHINA_UNICOM"

    const/4 v4, 0x2

    invoke-direct {v0, v2, v4, v1}, Lcn/egame/terminal/miniapay/c;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcn/egame/terminal/miniapay/c;->c:Lcn/egame/terminal/miniapay/c;

    new-instance v0, Lcn/egame/terminal/miniapay/c;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "NOT_DEFINE"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcn/egame/terminal/miniapay/c;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcn/egame/terminal/miniapay/c;->d:Lcn/egame/terminal/miniapay/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    array-length p1, p3

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    array-length p2, p3

    const/4 v0, 0x0

    invoke-static {p3, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcn/egame/terminal/miniapay/c;
    .locals 6

    sget-object v0, Lcn/egame/terminal/miniapay/c;->a:Lcn/egame/terminal/miniapay/c;

    iget-object v0, v0, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p0, Lcn/egame/terminal/miniapay/c;->a:Lcn/egame/terminal/miniapay/c;

    return-object p0

    :cond_2
    sget-object v0, Lcn/egame/terminal/miniapay/c;->b:Lcn/egame/terminal/miniapay/c;

    iget-object v0, v0, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    sget-object p0, Lcn/egame/terminal/miniapay/c;->b:Lcn/egame/terminal/miniapay/c;

    return-object p0

    :cond_5
    sget-object v0, Lcn/egame/terminal/miniapay/c;->c:Lcn/egame/terminal/miniapay/c;

    iget-object v0, v0, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_8

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    sget-object p0, Lcn/egame/terminal/miniapay/c;->c:Lcn/egame/terminal/miniapay/c;

    return-object p0

    :cond_8
    sget-object p0, Lcn/egame/terminal/miniapay/c;->a:Lcn/egame/terminal/miniapay/c;

    iget-object p0, p0, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_b

    aget-object v3, p0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    sget-object p0, Lcn/egame/terminal/miniapay/c;->a:Lcn/egame/terminal/miniapay/c;

    return-object p0

    :cond_b
    sget-object p0, Lcn/egame/terminal/miniapay/c;->b:Lcn/egame/terminal/miniapay/c;

    iget-object p0, p0, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_e

    aget-object v3, p0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_9

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    sget-object p0, Lcn/egame/terminal/miniapay/c;->b:Lcn/egame/terminal/miniapay/c;

    return-object p0

    :cond_e
    sget-object p0, Lcn/egame/terminal/miniapay/c;->c:Lcn/egame/terminal/miniapay/c;

    iget-object p0, p0, Lcn/egame/terminal/miniapay/c;->e:[Ljava/lang/String;

    array-length v0, p0

    :goto_a
    if-ge v2, v0, :cond_11

    aget-object v1, p0, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_b

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_10
    :goto_b
    sget-object p0, Lcn/egame/terminal/miniapay/c;->c:Lcn/egame/terminal/miniapay/c;

    return-object p0

    :cond_11
    sget-object p0, Lcn/egame/terminal/miniapay/c;->d:Lcn/egame/terminal/miniapay/c;

    return-object p0
.end method
