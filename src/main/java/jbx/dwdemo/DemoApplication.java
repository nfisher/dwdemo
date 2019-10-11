package jbx.dwdemo;

import jbx.dwdemo.resources.HelloWorldResource;
import jbx.dwdemo.health.TemplateHealthCheck;

import io.dropwizard.Application;
import io.dropwizard.setup.Bootstrap;
import io.dropwizard.setup.Environment;

public class DemoApplication extends Application<DemoConfiguration> {

    public static void main(final String[] args) throws Exception {
        new DemoApplication().run(args);
    }

    @Override
    public String getName() {
        return "Demo";
    }

    @Override
    public void initialize(final Bootstrap<DemoConfiguration> bootstrap) {
        // TODO: application initialization
    }

    @Override
    public void run(final DemoConfiguration configuration, final Environment environment) {
      final HelloWorldResource resource = new HelloWorldResource(
          configuration.getTemplate(),
          configuration.getDefaultName()
          );
      final TemplateHealthCheck healthCheck = new TemplateHealthCheck(configuration.getTemplate());
      environment.healthChecks().register("template", healthCheck);
      environment.jersey().register(resource);
    }

}
