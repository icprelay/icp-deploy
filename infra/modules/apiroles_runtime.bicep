param uamiPrincipalId string

resource servicebusdatasenderrole 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(uamiPrincipalId, 'servicebus-data-sender')
  properties: {
    roleDefinitionId: subscriptionResourceId(
      'Microsoft.Authorization/roleDefinitions',
      '69a216fc-b8fb-44d8-bc22-1f3c2cd27a39' // Service Bus Data Sender
    )
    principalId: uamiPrincipalId
    principalType: 'ServicePrincipal'
  }
}

resource secrets_user 'Microsoft.Authorization/roleAssignments@2022-04-01' = {
  name: guid(uamiPrincipalId, 'secrets-user')
  properties: {
    roleDefinitionId: subscriptionResourceId(
      'Microsoft.Authorization/roleDefinitions',
      'b86a8fe4-44ce-4948-aee5-eccb2c155cd7' // Key Vault Secrets Officer
    )
    principalId: uamiPrincipalId
    principalType: 'ServicePrincipal'
  }
}

