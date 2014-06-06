package org.jboss.windup.graph.renderer;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import org.apache.commons.io.IOUtils;
import org.jboss.windup.graph.renderer.html.DagreD3JSHtmlWriter;
import org.jboss.windup.graph.renderer.html.SigmaJSHtmlWriter;
import org.jboss.windup.graph.renderer.html.VizJSHtmlWriter;
import org.slf4j.LoggerFactory;

import com.tinkerpop.blueprints.Graph;

public class GraphExporter {
	private static final org.slf4j.Logger LOG = LoggerFactory.getLogger(GraphExporter.class);
	
	private final Graph graph;
	
	public GraphExporter(Graph graph) {
		this.graph = graph;
	}
	
	public void renderVizjs(File output) throws FileNotFoundException, IOException {
		LOG.debug("Writing Vizjs graph to: "+output.getAbsolutePath());
		render(new VizJSHtmlWriter(graph), output);
	}
	
	public void renderSigma(File output) throws FileNotFoundException, IOException {
		LOG.debug("Writing Sigmajs graph to: "+output.getAbsolutePath());
		render(new SigmaJSHtmlWriter(graph), output);
	}
	
	public void renderDagreD3(File output) throws FileNotFoundException, IOException {
		LOG.debug("Writing DagreD3 graph to: "+output.getAbsolutePath());
		render(new DagreD3JSHtmlWriter(graph), output);
	}
	
	public void render(GraphWriter writer, File output) throws FileNotFoundException, IOException {
		FileOutputStream fos = new FileOutputStream(output);
		writer.writeGraph(fos);
		IOUtils.closeQuietly(fos);
	}
}
