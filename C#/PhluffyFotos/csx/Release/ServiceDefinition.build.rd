<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="PhluffyFotos" generation="1" functional="0" release="0" Id="88585a64-56b4-4cf9-980c-b1ecef6451dd" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="PhluffyFotosGroup" generation="1" functional="0" release="0">
      <settings>
        <aCS name="PhluffyFotos.Worker:DataConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/PhluffyFotos/PhluffyFotosGroup/MapPhluffyFotos.Worker:DataConnectionString" />
          </maps>
        </aCS>
        <aCS name="PhluffyFotos.Worker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/PhluffyFotos/PhluffyFotosGroup/MapPhluffyFotos.Worker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="PhluffyFotos.Worker:WorkerSleepTime" defaultValue="">
          <maps>
            <mapMoniker name="/PhluffyFotos/PhluffyFotosGroup/MapPhluffyFotos.Worker:WorkerSleepTime" />
          </maps>
        </aCS>
        <aCS name="PhluffyFotos.WorkerInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/PhluffyFotos/PhluffyFotosGroup/MapPhluffyFotos.WorkerInstances" />
          </maps>
        </aCS>
      </settings>
      <maps>
        <map name="MapPhluffyFotos.Worker:DataConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/PhluffyFotos/PhluffyFotosGroup/PhluffyFotos.Worker/DataConnectionString" />
          </setting>
        </map>
        <map name="MapPhluffyFotos.Worker:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/PhluffyFotos/PhluffyFotosGroup/PhluffyFotos.Worker/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapPhluffyFotos.Worker:WorkerSleepTime" kind="Identity">
          <setting>
            <aCSMoniker name="/PhluffyFotos/PhluffyFotosGroup/PhluffyFotos.Worker/WorkerSleepTime" />
          </setting>
        </map>
        <map name="MapPhluffyFotos.WorkerInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/PhluffyFotos/PhluffyFotosGroup/PhluffyFotos.WorkerInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="PhluffyFotos.Worker" generation="1" functional="0" release="0" software="C:\Users\bradyg\SkyDrive\Sources\WindowsAzure-Samples-PhluffyPhotos\code\PhluffyFotos\csx\Release\roles\PhluffyFotos.Worker" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="1792" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="DataConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="WorkerSleepTime" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;PhluffyFotos.Worker&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;PhluffyFotos.Worker&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/PhluffyFotos/PhluffyFotosGroup/PhluffyFotos.WorkerInstances" />
            <sCSPolicyFaultDomainMoniker name="/PhluffyFotos/PhluffyFotosGroup/PhluffyFotos.WorkerFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyFaultDomain name="PhluffyFotos.WorkerFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="PhluffyFotos.WorkerInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
</serviceModel>