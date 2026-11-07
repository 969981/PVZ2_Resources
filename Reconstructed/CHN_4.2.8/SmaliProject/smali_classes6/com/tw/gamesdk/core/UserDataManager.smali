.class public Lcom/tw/gamesdk/core/UserDataManager;
.super Ljava/lang/Object;
.source "UserDataManager.java"


# static fields
.field private static final KEY_CURRENT_USER_ID:Ljava/lang/String; = "current_user_id"

.field private static final KEY_USER_LIST:Ljava/lang/String; = "user_list"

.field private static final MAX_SAVED_USERS:I = 0x5

.field private static final PREF_NAME:Ljava/lang/String; = "user_data_prefs"

.field private static final TAG:Ljava/lang/String; = "UserDataManager"

.field private static instance:Lcom/tw/gamesdk/core/UserDataManager;


# instance fields
.field private currentUid:Ljava/lang/String;

.field private gson:Lcom/google/gson/Gson;

.field private preferences:Landroid/content/SharedPreferences;

.field private userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tw/gamesdk/bean/SimpleUserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "user_data_prefs"

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/gamesdk/core/UserDataManager;->preferences:Landroid/content/SharedPreferences;

    .line 38
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/tw/gamesdk/core/UserDataManager;->gson:Lcom/google/gson/Gson;

    .line 39
    iget-object p1, p0, Lcom/tw/gamesdk/core/UserDataManager;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "current_user_id"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tw/gamesdk/core/UserDataManager;->currentUid:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/tw/gamesdk/core/UserDataManager;->loadUsers()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tw/gamesdk/core/UserDataManager;
    .locals 2

    const-class v0, Lcom/tw/gamesdk/core/UserDataManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/tw/gamesdk/core/UserDataManager;->instance:Lcom/tw/gamesdk/core/UserDataManager;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/tw/gamesdk/core/UserDataManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/core/UserDataManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tw/gamesdk/core/UserDataManager;->instance:Lcom/tw/gamesdk/core/UserDataManager;

    .line 47
    :cond_0
    sget-object p0, Lcom/tw/gamesdk/core/UserDataManager;->instance:Lcom/tw/gamesdk/core/UserDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private loadUsers()V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "user_list"

    const-string v2, "[]"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    :try_start_0
    new-instance v1, Lcom/tw/gamesdk/core/UserDataManager$3;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/core/UserDataManager$3;-><init>(Lcom/tw/gamesdk/core/UserDataManager;)V

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/UserDataManager$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 380
    iget-object v2, p0, Lcom/tw/gamesdk/core/UserDataManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 387
    iget-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u8f7d\u7528\u6237\u6570\u636e\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method private saveToPreferences()V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/tw/gamesdk/core/UserDataManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_list"

    .line 398
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 399
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public declared-synchronized cleanupExpiredUsers()I
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 239
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 242
    invoke-virtual {v4}, Lcom/tw/gamesdk/bean/SimpleUserData;->getTokenExpireTimestamp()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    .line 244
    invoke-virtual {v4}, Lcom/tw/gamesdk/bean/SimpleUserData;->getRefreshTokenExpireTimestamp()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v0, 0x1

    const-string v5, "UserDataManager"

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6e05\u7406\u8fc7\u671f\u7528\u6237: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v4}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tw/gamesdk/core/UserDataManager;->currentUid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 251
    invoke-virtual {p0, v4}, Lcom/tw/gamesdk/core/UserDataManager;->setCurrentUser(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    .line 258
    invoke-direct {p0}, Lcom/tw/gamesdk/core/UserDataManager;->saveToPreferences()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsUser(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 194
    monitor-exit p0

    return v0

    .line 197
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 198
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 199
    monitor-exit p0

    return p1

    .line 202
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteAllUsers()V
    .locals 2

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0}, Lcom/tw/gamesdk/core/UserDataManager;->setCurrentUser(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/tw/gamesdk/core/UserDataManager;->saveToPreferences()V

    const-string v0, "UserDataManager"

    const-string v1, "\u5220\u9664\u6240\u6709\u7528\u6237"

    .line 186
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteUser(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 157
    monitor-exit p0

    return v0

    .line 160
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 161
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 163
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 167
    iget-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->currentUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Lcom/tw/gamesdk/core/UserDataManager;->setCurrentUser(Ljava/lang/String;)V

    .line 171
    :cond_2
    invoke-direct {p0}, Lcom/tw/gamesdk/core/UserDataManager;->saveToPreferences()V

    const-string v0, "UserDataManager"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5220\u9664\u7528\u6237: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 173
    monitor-exit p0

    return p1

    .line 176
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized exportToJson()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllUsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tw/gamesdk/bean/SimpleUserData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentUser()Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 5

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->currentUid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 111
    monitor-exit p0

    return-object v1

    .line 114
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 115
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tw/gamesdk/core/UserDataManager;->currentUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 116
    monitor-exit p0

    return-object v2

    .line 119
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxSavedUsers()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getRemainingCapacity()I
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public declared-synchronized getUser(Ljava/lang/String;)Lcom/tw/gamesdk/bean/SimpleUserData;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 127
    monitor-exit p0

    return-object v0

    .line 130
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 131
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 132
    monitor-exit p0

    return-object v2

    .line 135
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUserCount()I
    .locals 1

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 281
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget-object v1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 283
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 285
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserSummaries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 292
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    iget-object v1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 294
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUserSummary()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 296
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUsersSortedByName()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tw/gamesdk/bean/SimpleUserData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 219
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 220
    new-instance v1, Lcom/tw/gamesdk/core/UserDataManager$1;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/core/UserDataManager$1;-><init>(Lcom/tw/gamesdk/core/UserDataManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUsersSortedByRecency()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tw/gamesdk/bean/SimpleUserData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 210
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 211
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized importFromJson(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 355
    :try_start_0
    new-instance v1, Lcom/tw/gamesdk/core/UserDataManager$2;

    invoke-direct {v1, p0}, Lcom/tw/gamesdk/core/UserDataManager$2;-><init>(Lcom/tw/gamesdk/core/UserDataManager;)V

    invoke-virtual {v1}, Lcom/tw/gamesdk/core/UserDataManager$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 356
    iget-object v2, p0, Lcom/tw/gamesdk/core/UserDataManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 360
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 361
    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 364
    :cond_0
    iput-object p1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    .line 365
    invoke-direct {p0}, Lcom/tw/gamesdk/core/UserDataManager;->saveToPreferences()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 366
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "UserDataManager"

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5bfc\u5165\u7528\u6237\u6570\u636e\u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :cond_1
    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveUser(Lcom/tw/gamesdk/bean/SimpleUserData;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_5

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tw/gamesdk/bean/SimpleUserData;

    .line 65
    invoke-virtual {v2}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UserDataManager"

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u66f4\u65b0\u7528\u6237: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string v0, "UserDataManager"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6dfb\u52a0\u65b0\u7528\u6237: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_3
    iget-object p1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_4

    .line 82
    iget-object p1, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    iget-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tw/gamesdk/bean/SimpleUserData;

    const-string v0, "UserDataManager"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u8fbe\u5230\u6700\u5927\u7528\u6237\u6570\u9650\u5236\uff0c\u5220\u9664\u6700\u65e7\u7528\u6237: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_4
    invoke-direct {p0}, Lcom/tw/gamesdk/core/UserDataManager;->saveToPreferences()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :cond_5
    :goto_2
    :try_start_1
    const-string p1, "UserDataManager"

    const-string v0, "\u4fdd\u5b58\u7528\u6237\u5931\u8d25\uff1a\u7528\u6237\u6216UID\u4e3a\u7a7a"

    .line 57
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCurrentUser(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "UserDataManager"

    const-string v0, "\u8bbe\u7f6e\u5f53\u524d\u7528\u6237\u5931\u8d25\uff1aUID\u4e3a\u7a7a"

    .line 95
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/tw/gamesdk/core/UserDataManager;->currentUid:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/tw/gamesdk/core/UserDataManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_user_id"

    .line 101
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "UserDataManager"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u5f53\u524d\u7528\u6237: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateUserNickname(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    .line 319
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tw/gamesdk/core/UserDataManager;->getUser(Ljava/lang/String;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 321
    monitor-exit p0

    return p1

    .line 324
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/tw/gamesdk/bean/SimpleUserData;->setNickname(Ljava/lang/String;)V

    .line 325
    invoke-direct {p0}, Lcom/tw/gamesdk/core/UserDataManager;->saveToPreferences()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 326
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateUserPhone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    .line 333
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tw/gamesdk/core/UserDataManager;->getUser(Ljava/lang/String;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 335
    monitor-exit p0

    return p1

    .line 338
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/tw/gamesdk/bean/SimpleUserData;->setPhone(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/tw/gamesdk/core/UserDataManager;->saveToPreferences()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 340
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateUserToken(Lcom/tw/gamesdk/bean/SimpleUserData;)Z
    .locals 2

    monitor-enter p0

    .line 303
    :try_start_0
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tw/gamesdk/core/UserDataManager;->getUser(Ljava/lang/String;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 305
    monitor-exit p0

    return p1

    .line 307
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->setToken(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getExpireIn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->setExpireIn(I)V

    .line 309
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tw/gamesdk/bean/SimpleUserData;->setNickname(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tw/gamesdk/bean/SimpleUserData;->setRefreshToken(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lcom/tw/gamesdk/core/UserDataManager;->saveToPreferences()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 312
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized validateUserToken(Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    .line 268
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tw/gamesdk/core/UserDataManager;->getUser(Ljava/lang/String;)Lcom/tw/gamesdk/bean/SimpleUserData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 270
    monitor-exit p0

    return v0

    .line 273
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->isTokenValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {p1}, Lcom/tw/gamesdk/bean/SimpleUserData;->getTokenExpireTimestamp()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    const/4 v0, 0x1

    .line 273
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
