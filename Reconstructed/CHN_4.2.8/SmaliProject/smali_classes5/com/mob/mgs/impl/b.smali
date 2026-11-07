.class public Lcom/mob/mgs/impl/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 1

    .line 9
    new-instance v0, Lcom/mob/mgs/impl/b$1;

    invoke-direct {v0}, Lcom/mob/mgs/impl/b$1;-><init>()V

    .line 23
    invoke-virtual {v0}, Lcom/mob/mgs/impl/b$1;->start()V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 47
    new-instance v0, Lcom/mob/mgs/impl/b$3;

    invoke-direct {v0, p0}, Lcom/mob/mgs/impl/b$3;-><init>(Z)V

    .line 75
    invoke-virtual {v0}, Lcom/mob/mgs/impl/b$3;->start()V

    .line 80
    invoke-static {p0}, Lcom/mob/mgs/impl/i;->a(Z)V

    return-void
.end method

.method public static a(ZZ)V
    .locals 1

    .line 27
    new-instance v0, Lcom/mob/mgs/impl/b$2;

    invoke-direct {v0, p0, p1}, Lcom/mob/mgs/impl/b$2;-><init>(ZZ)V

    .line 40
    invoke-virtual {v0}, Lcom/mob/mgs/impl/b$2;->start()V

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 89
    invoke-static {}, Lcom/mob/mgs/impl/b;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 91
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static c()Ljava/lang/Boolean;
    .locals 3

    .line 102
    invoke-static {}, Lcom/mob/mgs/impl/i;->a()Ljava/lang/Boolean;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/mob/mgs/impl/i;->b()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    if-eq v0, v1, :cond_1

    .line 105
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mob/mgs/impl/b;->a(ZZ)V

    :cond_1
    return-object v0
.end method
