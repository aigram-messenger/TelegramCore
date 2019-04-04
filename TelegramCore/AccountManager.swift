import Foundation
#if os(macOS)
    import PostboxMac
    import SwiftSignalKitMac
    import MtProtoKitMac
#else
    import Postbox
    import SwiftSignalKit
    import MtProtoKitDynamic
#endif

private enum AccountKind {
    case authorized
    case unauthorized
}

private var declaredEncodables: Void = {
    declareEncodable(UnauthorizedAccountState.self, f: { UnauthorizedAccountState(decoder: $0) })
    declareEncodable(AuthorizedAccountState.self, f: { AuthorizedAccountState(decoder: $0) })
    declareEncodable(TelegramUser.self, f: { TelegramUser(decoder: $0) })
    declareEncodable(TelegramGroup.self, f: { TelegramGroup(decoder: $0) })
    declareEncodable(TelegramChannel.self, f: { TelegramChannel(decoder: $0) })
    declareEncodable(TelegramMediaImage.self, f: { TelegramMediaImage(decoder: $0) })
    declareEncodable(TelegramMediaImageRepresentation.self, f: { TelegramMediaImageRepresentation(decoder: $0) })
    declareEncodable(TelegramMediaContact.self, f: { TelegramMediaContact(decoder: $0) })
    declareEncodable(TelegramMediaMap.self, f: { TelegramMediaMap(decoder: $0) })
    declareEncodable(TelegramMediaFile.self, f: { TelegramMediaFile(decoder: $0) })
    declareEncodable(TelegramMediaFileAttribute.self, f: { TelegramMediaFileAttribute(decoder: $0) })
    declareEncodable(CloudFileMediaResource.self, f: { CloudFileMediaResource(decoder: $0) })
    declareEncodable(ChannelState.self, f: { ChannelState(decoder: $0) })
    declareEncodable(RegularChatState.self, f: { RegularChatState(decoder: $0) })
    declareEncodable(TelegramPeerGroupState.self, f: { TelegramPeerGroupState(decoder: $0) })
    declareEncodable(InlineBotMessageAttribute.self, f: { InlineBotMessageAttribute(decoder: $0) })
    declareEncodable(TextEntitiesMessageAttribute.self, f: { TextEntitiesMessageAttribute(decoder: $0) })
    declareEncodable(ReplyMessageAttribute.self, f: { ReplyMessageAttribute(decoder: $0) })
    declareEncodable(CloudDocumentMediaResource.self, f: { CloudDocumentMediaResource(decoder: $0) })
    declareEncodable(TelegramMediaWebpage.self, f: { TelegramMediaWebpage(decoder: $0) })
    declareEncodable(ViewCountMessageAttribute.self, f: { ViewCountMessageAttribute(decoder: $0) })
    declareEncodable(NotificationInfoMessageAttribute.self, f: { NotificationInfoMessageAttribute(decoder: $0) })
    declareEncodable(TelegramMediaAction.self, f: { TelegramMediaAction(decoder: $0) })
    declareEncodable(TelegramPeerNotificationSettings.self, f: { TelegramPeerNotificationSettings(decoder: $0) })
    declareEncodable(CachedUserData.self, f: { CachedUserData(decoder: $0) })
    declareEncodable(BotInfo.self, f: { BotInfo(decoder: $0) })
    declareEncodable(CachedGroupData.self, f: { CachedGroupData(decoder: $0) })
    declareEncodable(CachedChannelData.self, f: { CachedChannelData(decoder: $0) })
    declareEncodable(TelegramUserPresence.self, f: { TelegramUserPresence(decoder: $0) })
    declareEncodable(LocalFileMediaResource.self, f: { LocalFileMediaResource(decoder: $0) })
    declareEncodable(StickerPackCollectionInfo.self, f: { StickerPackCollectionInfo(decoder: $0) })
    declareEncodable(StickerPackItem.self, f: { StickerPackItem(decoder: $0) })
    declareEncodable(LocalFileReferenceMediaResource.self, f: { LocalFileReferenceMediaResource(decoder: $0) })
    declareEncodable(OutgoingMessageInfoAttribute.self, f: { OutgoingMessageInfoAttribute(decoder: $0) })
    declareEncodable(ForwardSourceInfoAttribute.self, f: { ForwardSourceInfoAttribute(decoder: $0) })
    declareEncodable(SourceReferenceMessageAttribute.self, f: { SourceReferenceMessageAttribute(decoder: $0) })
    declareEncodable(EditedMessageAttribute.self, f: { EditedMessageAttribute(decoder: $0) })
    declareEncodable(ReplyMarkupMessageAttribute.self, f: { ReplyMarkupMessageAttribute(decoder: $0) })
    declareEncodable(CachedResolvedByNamePeer.self, f: { CachedResolvedByNamePeer(decoder: $0) })
    declareEncodable(OutgoingChatContextResultMessageAttribute.self, f: { OutgoingChatContextResultMessageAttribute(decoder: $0) })
    declareEncodable(HttpReferenceMediaResource.self, f: { HttpReferenceMediaResource(decoder: $0) })
    declareEncodable(WebFileReferenceMediaResource.self, f: { WebFileReferenceMediaResource(decoder: $0) })
    declareEncodable(EmptyMediaResource.self, f: { EmptyMediaResource(decoder: $0) })
    declareEncodable(TelegramSecretChat.self, f: { TelegramSecretChat(decoder: $0) })
    declareEncodable(SecretChatState.self, f: { SecretChatState(decoder: $0) })
    declareEncodable(SecretChatIncomingEncryptedOperation.self, f: { SecretChatIncomingEncryptedOperation(decoder: $0) })
    declareEncodable(SecretChatIncomingDecryptedOperation.self, f: { SecretChatIncomingDecryptedOperation(decoder: $0) })
    declareEncodable(SecretChatOutgoingOperation.self, f: { SecretChatOutgoingOperation(decoder: $0) })
    declareEncodable(SecretFileMediaResource.self, f: { SecretFileMediaResource(decoder: $0) })
    declareEncodable(CloudChatRemoveMessagesOperation.self, f: { CloudChatRemoveMessagesOperation(decoder: $0) })
    declareEncodable(AutoremoveTimeoutMessageAttribute.self, f: { AutoremoveTimeoutMessageAttribute(decoder: $0) })
    declareEncodable(GlobalNotificationSettings.self, f: { GlobalNotificationSettings(decoder: $0) })
    declareEncodable(CloudChatRemoveChatOperation.self, f: { CloudChatRemoveChatOperation(decoder: $0) })
    declareEncodable(SynchronizePinnedChatsOperation.self, f: { SynchronizePinnedChatsOperation(decoder: $0) })
    declareEncodable(SynchronizeConsumeMessageContentsOperation.self, f: { SynchronizeConsumeMessageContentsOperation(decoder: $0) })
    declareEncodable(RecentMediaItem.self, f: { RecentMediaItem(decoder: $0) })
    declareEncodable(RecentPeerItem.self, f: { RecentPeerItem(decoder: $0) })
    declareEncodable(RecentHashtagItem.self, f: { RecentHashtagItem(decoder: $0) })
    declareEncodable(LoggedOutAccountAttribute.self, f: { LoggedOutAccountAttribute(decoder: $0) })
    declareEncodable(CloudChatClearHistoryOperation.self, f: { CloudChatClearHistoryOperation(decoder: $0) })
    declareEncodable(OutgoingContentInfoMessageAttribute.self, f: { OutgoingContentInfoMessageAttribute(decoder: $0) })
    declareEncodable(ConsumableContentMessageAttribute.self, f: { ConsumableContentMessageAttribute(decoder: $0) })
    declareEncodable(TelegramMediaGame.self, f: { TelegramMediaGame(decoder: $0) })
    declareEncodable(TelegramMediaInvoice.self, f: { TelegramMediaInvoice(decoder: $0) })
    declareEncodable(TelegramMediaWebFile.self, f: { TelegramMediaWebFile(decoder: $0) })
    declareEncodable(SynchronizeInstalledStickerPacksOperation.self, f: { SynchronizeInstalledStickerPacksOperation(decoder: $0) })
    declareEncodable(FeaturedStickerPackItem.self, f: { FeaturedStickerPackItem(decoder: $0) })
    declareEncodable(SynchronizeMarkFeaturedStickerPacksAsSeenOperation.self, f: { SynchronizeMarkFeaturedStickerPacksAsSeenOperation(decoder: $0) })
    declareEncodable(ArchivedStickerPacksInfo.self, f: { ArchivedStickerPacksInfo(decoder: $0) })
    declareEncodable(SynchronizeChatInputStateOperation.self, f: { SynchronizeChatInputStateOperation(decoder: $0) })
    declareEncodable(SynchronizeSavedGifsOperation.self, f: { SynchronizeSavedGifsOperation(decoder: $0) })
    declareEncodable(SynchronizeSavedStickersOperation.self, f: { SynchronizeSavedStickersOperation(decoder: $0) })
    declareEncodable(CacheStorageSettings.self, f: { CacheStorageSettings(decoder: $0) })
    declareEncodable(LocalizationSettings.self, f: { LocalizationSettings(decoder: $0) })
    declareEncodable(LocalizationListState.self, f: { LocalizationListState(decoder: $0) })
    declareEncodable(ProxySettings.self, f: { ProxySettings(decoder: $0) })
    declareEncodable(NetworkSettings.self, f: { NetworkSettings(decoder: $0) })
    declareEncodable(RemoteStorageConfiguration.self, f: { RemoteStorageConfiguration(decoder: $0) })
    declareEncodable(LimitsConfiguration.self, f: { LimitsConfiguration(decoder: $0) })
    declareEncodable(VoipConfiguration.self, f: { VoipConfiguration(decoder: $0) })
    declareEncodable(SuggestedLocalizationEntry.self, f: { SuggestedLocalizationEntry(decoder: $0) })
    declareEncodable(SynchronizeLocalizationUpdatesOperation.self, f: { SynchronizeLocalizationUpdatesOperation(decoder: $0) })
    declareEncodable(ChannelMessageStateVersionAttribute.self, f: { ChannelMessageStateVersionAttribute(decoder: $0) })
    declareEncodable(PeerGroupMessageStateVersionAttribute.self, f: { PeerGroupMessageStateVersionAttribute(decoder: $0) })
    declareEncodable(CachedSecretChatData.self, f: { CachedSecretChatData(decoder: $0) })
    declareEncodable(TemporaryTwoStepPasswordToken.self, f: { TemporaryTwoStepPasswordToken(decoder: $0) })
    declareEncodable(AuthorSignatureMessageAttribute.self, f: { AuthorSignatureMessageAttribute(decoder: $0) })
    declareEncodable(TelegramMediaExpiredContent.self, f: { TelegramMediaExpiredContent(decoder: $0) })
    declareEncodable(SavedStickerItem.self, f: { SavedStickerItem(decoder: $0) })
    declareEncodable(ConsumablePersonalMentionMessageAttribute.self, f: { ConsumablePersonalMentionMessageAttribute(decoder: $0) })
    declareEncodable(ConsumePersonalMessageAction.self, f: { ConsumePersonalMessageAction(decoder: $0) })
    declareEncodable(CachedStickerPack.self, f: { CachedStickerPack(decoder: $0) })
    declareEncodable(LoggingSettings.self, f: { LoggingSettings(decoder: $0) })
    declareEncodable(CachedLocalizationInfos.self, f: { CachedLocalizationInfos(decoder: $0) })
    declareEncodable(CachedSecureIdConfiguration.self, f: { CachedSecureIdConfiguration(decoder: $0) })
    declareEncodable(SynchronizeGroupedPeersOperation.self, f: { SynchronizeGroupedPeersOperation(decoder: $0) })
    declareEncodable(ContentPrivacySettings.self, f: { ContentPrivacySettings(decoder: $0) })
    declareEncodable(TelegramDeviceContactImportedData.self, f: { TelegramDeviceContactImportedData(decoder: $0) })
    declareEncodable(SecureFileMediaResource.self, f: { SecureFileMediaResource(decoder: $0) })
    declareEncodable(CachedStickerQueryResult.self, f: { CachedStickerQueryResult(decoder: $0) })
    declareEncodable(TelegramWallpaper.self, f: { TelegramWallpaper(decoder: $0) })
    declareEncodable(SynchronizeMarkAllUnseenPersonalMessagesOperation.self, f: { SynchronizeMarkAllUnseenPersonalMessagesOperation(decoder: $0) })
    declareEncodable(CachedRecentPeers.self, f: { CachedRecentPeers(decoder: $0) })
    declareEncodable(AppChangelogState.self, f: { AppChangelogState(decoder: $0) })
    
    
    return
}()

public func initializeAccountManagement() {
    let _ = declaredEncodables
}

public func rootPathForBasePath(_ appGroupPath: String) -> String {
    return appGroupPath + "/telegram-data"
}

public func performAppGroupUpgrades(appGroupPath: String, rootPath: String) {
    let _ = try? FileManager.default.createDirectory(at: URL(fileURLWithPath: rootPath), withIntermediateDirectories: true, attributes: nil)
    
    do {
        var resourceValues = URLResourceValues()
        resourceValues.isExcludedFromBackup = true
        var mutableUrl = URL(fileURLWithPath: rootPath)
        try mutableUrl.setResourceValues(resourceValues)
    } catch let e {
        print("\(e)")
    }
    
    if let files = try? FileManager.default.contentsOfDirectory(at: URL(fileURLWithPath: appGroupPath), includingPropertiesForKeys: [], options: []) {
        for url in files {
            if url.lastPathComponent == "accounts-metadata" ||
                url.lastPathComponent.hasSuffix("logs") ||
                url.lastPathComponent.hasPrefix("account-") {
                let _ = try? FileManager.default.moveItem(at: url, to: URL(fileURLWithPath: rootPath + "/" + url.lastPathComponent))
            }
        }
    }
}

public final class TemporaryAccount {
    public let id: AccountRecordId
    public let basePath: String
    public let postbox: Postbox
    
    init(id: AccountRecordId, basePath: String, postbox: Postbox) {
        self.id = id
        self.basePath = basePath
        self.postbox = postbox
    }
}

public func temporaryAccount(manager: AccountManager, rootPath: String) -> Signal<TemporaryAccount, NoError> {
    return manager.allocatedTemporaryAccountId()
    |> mapToSignal { id -> Signal<TemporaryAccount, NoError> in
        let path = "\(rootPath)/\(accountRecordIdPathName(id))"
        return openPostbox(basePath: path + "/postbox", globalMessageIdsNamespace: Namespaces.Message.Cloud, seedConfiguration: telegramPostboxSeedConfiguration, isIncluded: isIncluded)
        |> mapToSignal { result -> Signal<TemporaryAccount, NoError> in
            switch result {
                case .upgrading:
                    return .complete()
                case let .postbox(postbox):
                    return .single(TemporaryAccount(id: id, basePath: path, postbox: postbox))
            }
        }
    }
}

public func currentAccount(allocateIfNotExists: Bool, networkArguments: NetworkInitializationArguments, supplementary: Bool, manager: AccountManager, rootPath: String, beginWithTestingEnvironment: Bool, auxiliaryMethods: AccountAuxiliaryMethods) -> Signal<AccountResult?, NoError> {
    return manager.currentAccountId(allocateIfNotExists: allocateIfNotExists)
    |> distinctUntilChanged(isEqual: { lhs, rhs in
        return lhs == rhs
    })
    |> mapToSignal { id -> Signal<AccountResult?, NoError> in
        if let id = id {
            let reload = ValuePromise<Bool>(true, ignoreRepeated: false)
            return reload.get()
            |> mapToSignal { _ -> Signal<AccountResult?, NoError> in
                return accountWithId(networkArguments: networkArguments, id: id, supplementary: supplementary, rootPath: rootPath, beginWithTestingEnvironment: beginWithTestingEnvironment, auxiliaryMethods: auxiliaryMethods)
                |> mapToSignal { accountResult -> Signal<AccountResult?, NoError> in
                    let postbox: Postbox
                    let initialKind: AccountKind
                    switch accountResult {
                        case .upgrading:
                            return .complete()
                        case let .unauthorized(account):
                            postbox = account.postbox
                            initialKind = .unauthorized
                        case let .authorized(account):
                            postbox = account.postbox
                            initialKind = .authorized
                    }
                    let updatedKind = postbox.stateView()
                    |> map { view -> Bool in
                        let kind: AccountKind
                        if view.state is AuthorizedAccountState {
                            kind = .authorized
                        } else {
                            kind = .unauthorized
                        }
                        if kind != initialKind {
                            return true
                        } else {
                            return false
                        }
                    }
                    |> distinctUntilChanged
                    
                    return Signal { subscriber in
                        subscriber.putNext(accountResult)
                        
                        return updatedKind.start(next: { value in
                            if value {
                                reload.set(true)
                            }
                        })
                    }
                }
            }
        } else {
            return .single(nil)
        }
    }
}

public func logoutFromAccount(id: AccountRecordId, accountManager: AccountManager) -> Signal<Void, NoError> {
    Logger.shared.log("AccountManager", "logoutFromAccount \(id)")
    return accountManager.transaction { transaction -> Void in
        transaction.updateRecord(id, { current in
            if let current = current {
                var found = false
                for attribute in current.attributes {
                    if attribute is LoggedOutAccountAttribute {
                        found = true
                        break
                    }
                }
                if found {
                    return current
                } else {
                    return AccountRecord(id: current.id, attributes: current.attributes + [LoggedOutAccountAttribute()], temporarySessionId: nil)
                }
            } else {
                return nil
            }
        })
        if transaction.getCurrentId() == id {
            let updatedId = transaction.createRecord([])
            transaction.setCurrentId(updatedId)
        }
    }
}

public func managedCleanupAccounts(networkArguments: NetworkInitializationArguments, accountManager: AccountManager, rootPath: String, auxiliaryMethods: AccountAuxiliaryMethods) -> Signal<Void, NoError> {
    let currentTemporarySessionId = accountManager.temporarySessionId
    return Signal { subscriber in
        let loggedOutAccounts = Atomic<[AccountRecordId: MetaDisposable]>(value: [:])
        let _ = (accountManager.transaction { transaction -> Void in
            for record in transaction.getRecords() {
                if let temporarySessionId = record.temporarySessionId, temporarySessionId != currentTemporarySessionId {
                    transaction.updateRecord(record.id, { _ in
                        return nil
                    })
                }
            }
        }).start()
        let disposable = accountManager.accountRecords().start(next: { view in
            var disposeList: [(AccountRecordId, MetaDisposable)] = []
            var beginList: [(AccountRecordId, MetaDisposable)] = []
            let _ = loggedOutAccounts.modify { disposables in
                var validIds = Set<AccountRecordId>()
                outer: for record in view.records {
                    for attribute in record.attributes {
                        if attribute is LoggedOutAccountAttribute {
                            validIds.insert(record.id)
                            continue outer
                        }
                    }
                }
                
                var disposables = disposables
                
                for id in disposables.keys {
                    if !validIds.contains(id) {
                        disposeList.append((id, disposables[id]!))
                    }
                }
                
                for (id, _) in disposeList {
                    disposables.removeValue(forKey: id)
                }
                
                for id in validIds {
                    if disposables[id] == nil {
                        let disposable = MetaDisposable()
                        beginList.append((id, disposable))
                        disposables[id] = disposable
                    }
                }
                
                return disposables
            }
            for (_, disposable) in disposeList {
                disposable.dispose()
            }
            for (id, disposable) in beginList {
                Logger.shared.log("managedCleanupAccounts", "cleanup \(id), current is \(String(describing: view.currentRecord?.id))")
                disposable.set(cleanupAccount(networkArguments: networkArguments, accountManager: accountManager, id: id, rootPath: rootPath, auxiliaryMethods: auxiliaryMethods).start())
            }
            
            var validPaths = Set<String>()
            for record in view.records {
                if let temporarySessionId = record.temporarySessionId, temporarySessionId != currentTemporarySessionId {
                    continue
                }
                validPaths.insert("\(accountRecordIdPathName(record.id))")
            }
            
            if let files = try? FileManager.default.contentsOfDirectory(at: URL(fileURLWithPath: rootPath), includingPropertiesForKeys: [], options: []) {
                for url in files {
                    if url.lastPathComponent.hasPrefix("account-") {
                        if !validPaths.contains(url.lastPathComponent) {
                            try? FileManager.default.removeItem(at: url)
                        }
                    }
                }
            }
        })
        
        return ActionDisposable {
            disposable.dispose()
        }
    }
}

private func cleanupAccount(networkArguments: NetworkInitializationArguments, accountManager: AccountManager, id: AccountRecordId, rootPath: String, auxiliaryMethods: AccountAuxiliaryMethods) -> Signal<Void, NoError> {
    return accountWithId(networkArguments: networkArguments, id: id, supplementary: true, rootPath: rootPath, beginWithTestingEnvironment: false, auxiliaryMethods: auxiliaryMethods)
    |> mapToSignal { account -> Signal<Void, NoError> in
        switch account {
            case .upgrading:
                return .complete()
            case .unauthorized:
                return .complete()
            case let .authorized(account):
                account.shouldBeServiceTaskMaster.set(.single(.always))
                return account.network.request(Api.functions.auth.logOut())
                |> map(Optional.init)
                |> `catch` { _ -> Signal<Api.Bool?, NoError> in
                    return .single(.boolFalse)
                }
                |> mapToSignal { _ -> Signal<Void, NoError> in
                    account.shouldBeServiceTaskMaster.set(.single(.never))
                    return accountManager.transaction { transaction -> Void in
                        transaction.updateRecord(id, { _ in
                            return nil
                        })
                    }
                }
        }
    }
}
